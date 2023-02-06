LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY Song_Of_Storms IS
PORT (   
			Clk_in, Duracao, Stop_in, Play_in : IN std_logic;
			Clk_out, Disparo  : OUT std_logic := '0';
         Temp_out, Freq_out : OUT std_logic_vector (27 DOWNTO 0)
      );
END Song_Of_Storms;

ARCHITECTURE bhv OF Song_Of_Storms IS
  -- Subprograma para aplicar o tempo e frequencia
  --para atribuição de saídas nos estados
  PROCEDURE nota (CONSTANT ov_f : IN integer;
						CONSTANT ov_t : IN integer ) IS
  BEGIN
		Temp_out <= std_logic_vector(to_unsigned(ov_t,Temp_out'LENGTH)); --define a duração	proxima nota			
		Freq_out <= std_logic_vector(to_unsigned(ov_f,Freq_out'LENGTH)); --define a frequência nota atual
		Disparo <= '1';  --dispara o temp a próxima nota	
  END nota;

	--clock principal da placa
	CONSTANT clk_FPGA : integer := 50000000; --50MHz
	--overflow para frequencias (50MHz)
	CONSTANT B0  : integer :=  1612904;
   CONSTANT C1  : integer := 1515151; 
   CONSTANT CS1 : integer := 1428571;
   CONSTANT D1  : integer := 1351351;
   CONSTANT DS1 : integer := 1282051;
   CONSTANT E1  : integer := 1219512;
   CONSTANT F1  : integer := 1136363;                                        
   CONSTANT FS1 : integer := 1086956;                                         
   CONSTANT G1  : integer := 1020408;                                        
   CONSTANT GS1 : integer := 961538;                                        
   CONSTANT A1  : integer := 909090;                                       
   CONSTANT AS1 : integer := 862068;                                      
   CONSTANT B1  : integer := 806451;                                       
   CONSTANT C2  : integer := 757575;                                       
   CONSTANT CS2 : integer := 714285;                                        
   CONSTANT D2  : integer := 675675;                                       
   CONSTANT DS2 : integer := 641025;                                        
   CONSTANT E2  : integer := 609756;                                       
   CONSTANT F2  : integer := 568181;                                       
   CONSTANT FS2 : integer := 543478;                                        
   CONSTANT G2  : integer := 510204;                                       
   CONSTANT GS2 : integer := 480769;                                        
   CONSTANT A2  : integer := 454545;                                       
   CONSTANT AS2 : integer := 431034;                                        
   CONSTANT B2  : integer := 403225;                                       
   CONSTANT C3  : integer := 378787;                                       
   CONSTANT CS3 : integer := 357142;                                        
   CONSTANT D3  : integer := 337837;                                       
   CONSTANT DS3 : integer := 320512;                                        
   CONSTANT E3  : integer := 304878;                                       
   CONSTANT F3  : integer := 284090;                                       
   CONSTANT FS3 : integer := 271739;                                        
   CONSTANT G3  : integer := 255102;                                       
   CONSTANT GS3 : integer := 240384;                                        
   CONSTANT A3  : integer := 227272;                                       
   CONSTANT AS3 : integer := 215517;                                        
   CONSTANT B3  : integer := 201612;                                       
   CONSTANT C4  : integer := 189393;                                       
   CONSTANT CS4 : integer := 178571;                                        
   CONSTANT D4  : integer := 168918;                                       
   CONSTANT DS4 : integer := 160256;                                        
   CONSTANT E4  : integer := 152439;                                       
   CONSTANT F4  : integer := 142045;                                       
   CONSTANT FS4 : integer := 135869;                                        
   CONSTANT G4  : integer := 127551;                                       
   CONSTANT GS4 : integer := 120192;                                        
   CONSTANT A4  : integer := 113636;                                       
   CONSTANT AS4 : integer := 107758;                                        
   CONSTANT B4  : integer := 100806;                                       
   CONSTANT C5  : integer := 94696;                                       
   CONSTANT CS5 : integer := 89285;                                        
   CONSTANT D5  : integer := 84459;                                       
   CONSTANT DS5 : integer := 80128;                                        
   CONSTANT E5  : integer := 76219;                                       
   CONSTANT F5  : integer := 71022;                                       
   CONSTANT FS5 : integer := 67934;                                        
   CONSTANT G5  : integer := 63775;                                       
   CONSTANT GS5 : integer := 60096;                                        
   CONSTANT A5  : integer := 56818;                                       
   CONSTANT AS5 : integer := 53879;                                        
   CONSTANT B5  : integer := 50403;                                       
   CONSTANT C6  : integer := 47348;                                       
   CONSTANT CS6 : integer := 44642;                                        
   CONSTANT D6  : integer := 42229;                                       
   CONSTANT DS6 : integer := 40064;                                        
   CONSTANT E6  : integer := 38109;                                       
   CONSTANT F6  : integer := 35511;                                       
   CONSTANT FS6 : integer := 33967;                                        
   CONSTANT G6  : integer := 31887;                                       
   CONSTANT GS6 : integer := 30048;                                        
   CONSTANT A6  : integer := 28409;                                       
   CONSTANT AS6 : integer := 26939;                                        
   CONSTANT B6  : integer := 25201;                                       
   CONSTANT C7  : integer := 23674;                                       
   CONSTANT CS7 : integer := 22321;                                        
   CONSTANT D7  : integer := 21114;                                       
   CONSTANT DS7 : integer := 20032;                                        
   CONSTANT E7  : integer := 19054;                                       
   CONSTANT F7  : integer := 17755;                                       
   CONSTANT FS7 : integer := 16983;                                        
   CONSTANT G7  : integer := 15943;                                       
   CONSTANT GS7 : integer := 15024;                                        
   CONSTANT A7  : integer := 14204;                                       
   CONSTANT AS7 : integer := 13469;                                        
   CONSTANT B7  : integer := 12600;                                       
   CONSTANT C8  : integer := 11837;                                       
   CONSTANT CS8 : integer := 11160;                                        
   CONSTANT D8  : integer := 10557;                                       
   CONSTANT DS8 : integer := 10016;                                        
	                           
	--overflow para tempos (50MHz)
	-- BPM igual a 60 implica que t1, 1 batida, representa 1 seg
	-- BPM igual a 120 implica que t1, 1 batida, representa 0.5 seg
	CONSTANT BPM     : integer := 200; --batidas por minuto 
	CONSTANT BPS     : integer := BPM / 60; --batidas por segundo
	CONSTANT ov_t4   : integer := (4 * clk_FPGA) / BPS; --overflow 4 batidas
	CONSTANT ov_t2   : integer := (2 * clk_FPGA) / BPS; --overflow 2 batidas
	CONSTANT ov_t1   : integer := clk_FPGA / BPS; --overflow 1 batida
	CONSTANT ov_t1_2 : integer := (clk_FPGA / 2) / BPS; --overflow 1/2 batidas
	CONSTANT ov_t1_4 : integer := (clk_FPGA / 4) / BPS; --overflow 1/4 batidas
	
	--FSM Declaração de estados 
	TYPE estados IS (s0, s1 , s2, s3, s4, s5, s6,
                    s7, s8, s9, s10, s11, s12, s13,
						  s14, s15, s16, s17, s18, s19, s20,
						  s21, s22, s23, s24, s25, s26, s27,
						  s28, s29, s30, s31, s32, s33, s34,
						  s35, s36, s37, s38, s39, s40, s41,
						  s42, s43, s44, s45, s46, s47, s48,
						  s49, s50, s51, s52, s53, s54, s55,
                    s56, s57, s58, s59, s60, s61, s62,
                    s63, s64, s65, s66, s67);
	SIGNAL estado_atual: estados;
	SIGNAL proximo_estado: estados;
BEGIN
	--Lógica para controle do estado atual
	L1: PROCESS(Clk_in)
	BEGIN
		IF rising_edge(Clk_in) THEN 
			estado_atual <= proximo_estado;
		END IF;
	END PROCESS L1;
	--Lógica para próximo estado
	L2: PROCESS (estado_atual, Duracao)
	BEGIN
		CASE estado_atual IS
			WHEN s0 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s1;
					ELSE proximo_estado <= s0;
					END IF;
				END IF;
			WHEN s1 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s2;
					ELSE proximo_estado <= s1;					
					END IF;
				END IF;	
			WHEN s2 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s3;					
					ELSE proximo_estado <= s2;
					END IF;	
				END IF;
			WHEN s3 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s4;					
					ELSE proximo_estado <= s3;
					END IF;	
				END IF;
			WHEN s4 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s5;					
					ELSE proximo_estado <= s4;
					END IF;
				END IF;
			WHEN s5 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s6;					
					ELSE proximo_estado <= s5;
					END IF;	
				END IF;
			WHEN s6 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s7;					
					ELSE proximo_estado <= s6;
					END IF;
				END IF;
			WHEN s7 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s8;					
					ELSE proximo_estado <= s7;
					END IF;
				END IF;
			WHEN s8 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s9;					
					ELSE proximo_estado <= s8;
					END IF;
				END IF;	
			WHEN s9 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s10;					
					ELSE proximo_estado <= s9;
					END IF;
				END IF;	
			WHEN s10 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s11;					
					ELSE proximo_estado <= s10;
					END IF;
				END IF;	
			WHEN s11 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s12;					
					ELSE proximo_estado <= s11;
					END IF;
				END IF;	
			WHEN s12 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s13;					
					ELSE proximo_estado <= s12;
					END IF;
				END IF;	
			WHEN s13 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s14;					
					ELSE proximo_estado <= s13;
					END IF;
				END IF;	
			WHEN s14 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s15;					
					ELSE proximo_estado <= s14;
					END IF;
				END IF;
			WHEN s15 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s16;					
					ELSE proximo_estado <= s15;
					END IF;
				END IF;
			WHEN s16 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s17;					
					ELSE proximo_estado <= s16;
					END IF;
				END IF;
			WHEN s17 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s18;					
					ELSE proximo_estado <= s17;
					END IF;	
				END IF;
			WHEN s18 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s19;					
					ELSE proximo_estado <= s18;
					END IF;
				END IF;
			WHEN s19 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s20;					
					ELSE proximo_estado <= s19;
					END IF;
				END IF;	
			WHEN s20 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s21;					
					ELSE proximo_estado <= s20;
					END IF;
				END IF;
			WHEN s21 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s22;					
					ELSE proximo_estado <= s21;
					END IF;
				END IF;
			WHEN s22 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s23;					
					ELSE proximo_estado <= s22;
					END IF;
				END IF;	
			WHEN s23 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s24;						
					ELSE proximo_estado <= s23;
					END IF;
				END IF;	
			WHEN s24 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s25;					
					ELSE proximo_estado <= s24;
					END IF;
				END IF;	
			WHEN s25 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s26;					
					ELSE proximo_estado <= s25;
					END IF;	
				END IF;
			WHEN s26 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s27;					
					ELSE proximo_estado <= s26;
					END IF;
				END IF;	
			WHEN s27 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s28;					
					ELSE proximo_estado <= s27;
					END IF;
				END IF;	
			WHEN s28 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s29;					
					ELSE proximo_estado <= s28;
					END IF;
				END IF;	
			WHEN s29 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s30;					
					ELSE proximo_estado <= s29;
					END IF;
				END IF;
			WHEN s30 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s31;					
					ELSE proximo_estado <= s30;
					END IF;
				END IF;
			WHEN s31 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s32;					
					ELSE proximo_estado <= s31;
					END IF;
				END IF;
			WHEN s32 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s33;					
					ELSE proximo_estado <= s32;
					END IF;
				END IF;
			WHEN s33 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s34;					
					ELSE proximo_estado <= s33;
					END IF;
				END IF;
			WHEN s34 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s35;					
					ELSE proximo_estado <= s34;
					END IF;
				END IF;
			WHEN s35 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s36;					
					ELSE proximo_estado <= s35;
					END IF;
				END IF;
			WHEN s36 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s37;					
					ELSE proximo_estado <= s36;
					END IF;
				END IF;
			WHEN s37 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s38;					
					ELSE proximo_estado <= s37;
					END IF;
				END IF;
			WHEN s38 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s39;					
					ELSE proximo_estado <= s38;
					END IF;
				END IF;
			WHEN s39 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s40;					
					ELSE proximo_estado <= s39;
					END IF;
				END IF;
			WHEN s40 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s41;					
					ELSE proximo_estado <= s40;
					END IF;
				END IF;
			WHEN s41 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s42;					
					ELSE proximo_estado <= s41;
					END IF;
				END IF;
			WHEN s42 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s43;					
					ELSE proximo_estado <= s42;
					END IF;
				END IF;
			WHEN s43 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s44;					
					ELSE proximo_estado <= s43;
					END IF;
				END IF;
			WHEN s44 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s45;					
					ELSE proximo_estado <= s44;
					END IF;
				END IF;
			WHEN s45 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s46;					
					ELSE proximo_estado <= s45;
					END IF;
				END IF;
			WHEN s46 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s47;					
					ELSE proximo_estado <= s46;
					END IF;
				END IF;
			WHEN s47 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s48;					
					ELSE proximo_estado <= s47;
					END IF;
				END IF;
			WHEN s48 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s49;
					ELSE proximo_estado <= s48;
					END IF;
				END IF;
			WHEN s49 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s50;					
					ELSE proximo_estado <= s49;
					END IF;
				END IF;	
			WHEN s50 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s51;					
					ELSE proximo_estado <= s50;
					END IF;
				END IF;
			WHEN s51 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s52;					
					ELSE proximo_estado <= s51;
					END IF;
				END IF;
			WHEN s52 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s53;					
					ELSE proximo_estado <= s52;
					END IF;
				END IF;
			WHEN s53 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s54;					
					ELSE proximo_estado <= s53;
					END IF;
				END IF;
			WHEN s54 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s55;					
					ELSE proximo_estado <= s54;
					END IF;
				END IF;
			WHEN s55 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s56;					
					ELSE proximo_estado <= s55;
					END IF;
				END IF;
			WHEN s56 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s57;					
					ELSE proximo_estado <= s56;
					END IF;
				END IF;
			WHEN s57 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s58;					
					ELSE proximo_estado <= s57;
					END IF;
				END IF;
			WHEN s58 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s59;					
					ELSE proximo_estado <= s58;
					END IF;
				END IF;
			WHEN s59 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s60;					
					ELSE proximo_estado <= s59;
					END IF;
				END IF;
			WHEN s60 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s61;					
					ELSE proximo_estado <= s60;
					END IF;
				END IF;
			WHEN s61 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s62;					
					ELSE proximo_estado <= s61;
					END IF;
				END IF;
			WHEN s62 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s63;					
					ELSE proximo_estado <= s62;
					END IF;
				END IF;
			WHEN s63 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s64;					
					ELSE proximo_estado <= s63;
					END IF;
				END IF;
			WHEN s64 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s65;					
					ELSE proximo_estado <= s64;
					END IF;
				END IF;
			WHEN s65 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s66;					
					ELSE proximo_estado <= s65;
					END IF;
				END IF;
			WHEN s66 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s67;					
					ELSE proximo_estado <= s66;
					END IF;
				END IF;
			WHEN s67 =>
				IF (Stop_in = '1') THEN
					proximo_estado <= s0;
				ELSE
					IF (Duracao = '0' and Play_in = '1') THEN
						proximo_estado <= s0;					
					ELSE proximo_estado <= s67;
					END IF;
				END IF;
			WHEN OTHERS =>
				--recupera de estado inválido
				proximo_estado <= s0; --reinicia
		END CASE;
	END PROCESS L2;
	--Lógica para saída da FSM
	L3: PROCESS (Clk_in, estado_atual)
	BEGIN
		IF rising_edge(Clk_in) THEN
			CASE estado_atual IS
            -- Whole(1)       -> 4
            -- Half(2)        -> 2
            -- Quarter(4)     -> 1
            -- Eighth(8)      -> 1/2
            -- Sisxteenth(16) -> 1_4
				WHEN s0 => nota(0,    ov_t1); --s0 apenas inicia a prox nota
				WHEN s1 => nota(D6,   ov_t1);
				WHEN s2 => nota(A6,   ov_t1);
            WHEN s3 => nota(A6,   ov_t1_2);
				WHEN s4 => nota(0,    ov_t1_2);
				WHEN s5 => nota(E6,   ov_t2);
				WHEN s6 => nota(B6,   ov_t1);
				WHEN s7 => nota(F6,   ov_t1);
				WHEN s8 => nota(C7,   ov_t1);
				WHEN s9 => nota(C7,   ov_t1_2);
				WHEN s10 => nota(0,  ov_t1_2);
				WHEN s11 => nota(E6,  ov_t2);
				WHEN s12 => nota(B6,  ov_t1);
				WHEN s13 => nota(D6,  ov_t1);
				WHEN s14 => nota(A6,  ov_t1);
				WHEN s15 => nota(A6,  ov_t1_2);
				WHEN s16 => nota(0,   ov_t1_2);
				WHEN s17 => nota(E6,  ov_t2);
				WHEN s18 => nota(B6,  ov_t1);
				WHEN s19 => nota(F6,  ov_t1);
				WHEN s20 => nota(C7,  ov_t1);
				WHEN s21 => nota(C7,  ov_t1_2);
				WHEN s22 => nota(0,   ov_t1_2);
				WHEN s23 => nota(E6,  ov_t2);
            WHEN s24 => nota(B6,  ov_t1_2);
                                            
				WHEN s25 => nota(D6,  ov_t1_2);
				WHEN s26 => nota(F6,  ov_t2);
				WHEN s27 => nota(D7,  ov_t1_2);
                                            
				WHEN s28 => nota(D6,  ov_t1_2);
				WHEN s29 => nota(F6,  ov_t2);
				WHEN s30 => nota(D7,  ov_t1+ov_t1_2);
                                            
				WHEN s31 => nota(E7,  ov_t1_2);                                            
				WHEN s32 => nota(F7,  ov_t1_2);
                                            
				WHEN s33 => nota(E7,  ov_t1_2);
				WHEN s34 => nota(F7,  ov_t1_2);
                                            
				WHEN s35 => nota(E7,  ov_t1_2);                                            
				WHEN s36 => nota(C7,  ov_t1);
				WHEN s37 => nota(A6,  ov_t1_2);
				WHEN s38 => nota(A6,  ov_t1);                                            
				WHEN s39 => nota(D6,  ov_t1_2);
				WHEN s40 => nota(F6,  ov_t1_2);
				WHEN s41 => nota(G6,  ov_t2);
            WHEN s42 => nota(A6,  ov_t1_2);
            WHEN s43 => nota(A6,  ov_t1);                                            
            WHEN s44 => nota(D6,  ov_t1_2);
            WHEN s45 => nota(F6,  ov_t1_2);
            WHEN s46 => nota(G6,  ov_t2+ov_t1_2);
            WHEN s47 => nota(E6,  ov_t1_2);
                                            
            WHEN s48 => nota(D6,  ov_t1_2);
            WHEN s49 => nota(F6,  ov_t2);
            WHEN s50 => nota(D7,  ov_t1_2);
            WHEN s51 => nota(D6,  ov_t1_2);
                                            
            WHEN s52 => nota(F6,  ov_t2);
            WHEN s53 => nota(D7,  ov_t1+ov_t1_2);
            WHEN s54 => nota(E7,  ov_t1_2);
            WHEN s55 => nota(F7,  ov_t1_2);                                            

            WHEN s56 => nota(E7,  ov_t1_2);
            WHEN s57 => nota(F7,  ov_t1_2);
            WHEN s58 => nota(E7,  ov_t1_2);
            WHEN s59 => nota(C7,  ov_t1);                                            

            WHEN s60 => nota(A6,  ov_t1);
            WHEN s61 => nota(A6,  ov_t1);
            WHEN s62 => nota(D6,  ov_t1_2);
            WHEN s63 => nota(F6,  ov_t1_2);

            WHEN s64 => nota(G6,  ov_t1);
            WHEN s65 => nota(A6,  ov_t1);
            WHEN s66 => nota(A6,  ov_t4);
            WHEN s67 => nota(D6,  ov_t1);                                            
                                                                  
--Não é necessário WHEN OTHERS pois
--o controle é feito no processo L2
			END CASE;
		END IF;
	END PROCESS L3;
	
	--Atribuição contínua
	Clk_out <= Duracao AND Clk_in;
END bhv;