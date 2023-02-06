LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
ENTITY TheLegendOfZelda IS
PORT (   
			Clk_in, Duracao, Stop_in, Play_in : IN std_logic;
			Clk_out, Disparo  : OUT std_logic := '0';
         Temp_out, Freq_out : OUT std_logic_vector (27 DOWNTO 0)
      );
END TheLegendOfZelda;
ARCHITECTURE bhv OF TheLegendOfZelda IS
  -- Subprograma para aplicar o tempo e frequencia
  -- Para atribuição de saídas nos estados
  PROCEDURE nota (CONSTANT ov_f : IN integer;
                  CONSTANT ov_t : IN integer ) IS
  BEGIN
      Temp_out <= std_logic_vector(to_unsigned(ov_t,Temp_out'LENGTH)); --define a duração	proxima nota
      Freq_out <= std_logic_vector(to_unsigned(ov_f,Freq_out'LENGTH)); --define a frequência nota atual
      Disparo <= '1';  --dispara o temp a próxima nota
  END nota;
   -- Clock principal da placa
   CONSTANT clk_FPGA : integer := 50000000; --50MHz
   -- Overflow para frequencias (50MHz)
	
	CONSTANT E5  : integer := 75872;   --659
	CONSTANT FS4 : integer := 135135;  --370
	CONSTANT GS4 : integer := 120481;  --415
   CONSTANT A4  : integer := 113636;  --440
	CONSTANT C4  : integer := 190839;  --262
	CONSTANT CS4 : integer := 180505;  --277
	CONSTANT F4  : integer := 143266;  --349
	CONSTANT G4  : integer := 127551;  --392
	CONSTANT AS4 : integer := 107296;  --466
	CONSTANT C5  : integer := 95602;   --523
	CONSTANT CS5 : integer := 90252;   --554
	CONSTANT D5  : integer := 85178;   --587
	CONSTANT DS5 : integer := 80385;   --622
	CONSTANT F5  : integer := 71633;   --698
	CONSTANT FS5 : integer := 67567;   --740
	CONSTANT G5  : integer := 63775;   --784
	CONSTANT GS5 : integer := 60168;   --831
	CONSTANT A5  : integer := 56818;   --880
	CONSTANT AS5 : integer := 53648;   --932
	CONSTANT C6  : integer := 47755;   --1047
	CONSTANT CS6 : integer := 45085;   --1109
   
   -- Overflow para tempos (50MHz)
   -- BPM igual a 60 implica que t1, 1 batida, representa 1 seg
   -- BPM igual a 120 implica que t1, 1 batida, representa 0.5 seg
   CONSTANT BPM         : integer := 130;                        --batidas por minuto
   CONSTANT BPS         : integer := BPM / 60;                  --batidas por segundo
   CONSTANT ov_t4       : integer := (4 * clk_FPGA) / BPS;      --overflow 4 batidas
   CONSTANT ov_t2       : integer := (2 * clk_FPGA) / BPS;      --overflow 2 batidas
   CONSTANT ov_t1       : integer := clk_FPGA / BPS;            --overflow 1 batida
   CONSTANT ov_t1_2     : integer := ((clk_FPGA * 4)/ 2) / BPS;      --overflow 1/2 batidas
   CONSTANT ov_t1_4	   : integer := ((clk_FPGA * 4)/ 4) / BPS;      --overflow 1/4 batidas
	CONSTANT ov_t1_8	   : integer := ((clk_FPGA * 4)/ 8) / BPS;      --overflow 1/4 batidas
	CONSTANT ov_t1_16	   : integer := ((clk_FPGA * 4)/ 16) / BPS;      --overflow 1/4 batidas
	CONSTANT ov_Dot2	: integer := ((clk_FPGA *12) / 4) / BPS;      --overflow 1/4 batidas
	CONSTANT ov_Dot4	: integer := ((clk_FPGA *12) / 8) / BPS;      --overflow 1/4 batidas
	CONSTANT ov_Dot8	: integer := ((clk_FPGA *12) / 16) / BPS;      --overflow 1/4 batidas
	

   -- FSM Declaração de estados 
   TYPE estados IS (
                  s0,--pausa inicial
                  s1, s2, s3, s4, s5, s6, s7, s8,s9,
                  s10, s11, s12, s13, s14, s15, s16, s17, s18, s19,
                  s20, s21, s22, s23, s24, s25, s26, s27, s28, s29, s30, s31,s32,
                  s33, s34, s35, s36, s37, s38, s39, s40, s41, s42,
                  s43, s44, s45, s46, s47, s48, s49, s50, s51, s52, s53, s54,s55,
                  s56, s57, s58, s59, s60, s61, s62, s63, s64, s65,
                  s66, s67, s68, s69, s70, s71, s72, s73, s74, s75, s76, s77, s78,
                  s79, s80, s81, s82, s83, s84, s85, s86, s87, s88, s89,
                  s90, s91, s92, s93, s94, s95, s96, s97, s98, s99, s100, s101, s102,
                  s103, s104, s105, s106, s107, s108, s109, s110  
   );
   SIGNAL estado_atual: estados;
   SIGNAL proximo_estado: estados;
BEGIN
   -- Lógica para controle do estado atual
   L1: PROCESS(Clk_in)
   BEGIN
      IF rising_edge(Clk_in) THEN 
         estado_atual <= proximo_estado;
      END IF;
   END PROCESS L1;
   -- Lógica para próximo estado
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
               ELSE proximo_estado <= s58;
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
                  proximo_estado <= s68;
               ELSE proximo_estado <= s67;
               END IF;
            END IF;
            WHEN s68 =>
            IF (Stop_in = '1') THEN
               proximo_estado <= s0;
            ELSE
               IF (Duracao = '0' and Play_in = '1') THEN
                  proximo_estado <= s69;
               ELSE proximo_estado <= s68;
               END IF;
            END IF;
            WHEN s69 =>
            IF (Stop_in = '1') THEN
               proximo_estado <= s0;
            ELSE
               IF (Duracao = '0' and Play_in = '1') THEN
                  proximo_estado <= s70;
               ELSE proximo_estado <= s69;
               END IF;
            END IF;
         WHEN s70 =>
            IF (Stop_in = '1') THEN
               proximo_estado <= s0;
            ELSE
               IF (Duracao = '0' and Play_in = '1') THEN
                  proximo_estado <= s71;
               ELSE proximo_estado <= s70;
               END IF;
            END IF;
         WHEN s71 =>
            IF (Stop_in = '1') THEN
               proximo_estado <= s0;
            ELSE
               IF (Duracao = '0' and Play_in = '1') THEN
                  proximo_estado <= s72;
               ELSE proximo_estado <= s71;
               END IF;
            END IF;
         WHEN s72 =>
            IF (Stop_in = '1') THEN
               proximo_estado <= s0;
            ELSE
               IF (Duracao = '0' and Play_in = '1') THEN
                  proximo_estado <= s73;
               ELSE proximo_estado <= s72;
               END IF;
            END IF;
         WHEN s73 =>
            IF (Stop_in = '1') THEN
               proximo_estado <= s0;
            ELSE
               IF (Duracao = '0' and Play_in = '1') THEN
                  proximo_estado <= s74;
               ELSE proximo_estado <= s73;
               END IF;
            END IF;
         WHEN s74 =>
            IF (Stop_in = '1') THEN
               proximo_estado <= s0;
            ELSE
               IF (Duracao = '0' and Play_in = '1') THEN
                  proximo_estado <= s75;
               ELSE proximo_estado <= s74;
               END IF;
            END IF;
         WHEN s75 =>
            IF (Stop_in = '1') THEN
               proximo_estado <= s0;
            ELSE
               IF (Duracao = '0' and Play_in = '1') THEN
                  proximo_estado <= s76;
               ELSE proximo_estado <= s75;
               END IF;
            END IF;
         WHEN s76 =>
            IF (Stop_in = '1') THEN
               proximo_estado <= s0;
            ELSE
               IF (Duracao = '0' and Play_in = '1') THEN
                  proximo_estado <= s77;
               ELSE proximo_estado <= s76;
               END IF;
            END IF;
            WHEN s77 =>
            IF (Stop_in = '1') THEN
               proximo_estado <= s0;
            ELSE
               IF (Duracao = '0' and Play_in = '1') THEN
                  proximo_estado <= s78;
               ELSE proximo_estado <= s77;
               END IF;
            END IF;
          WHEN s78 =>
            IF (Stop_in = '1') THEN
               proximo_estado <= s0;
            ELSE
               IF (Duracao = '0' and Play_in = '1') THEN
                  proximo_estado <= s79;
               ELSE proximo_estado <= s78;
               END IF;
            END IF;
          WHEN s79 =>
            IF (Stop_in = '1') THEN
               proximo_estado <= s0;
            ELSE
               IF (Duracao = '0' and Play_in = '1') THEN
                  proximo_estado <= s80;
               ELSE proximo_estado <= s79;
               END IF;
            END IF;
            WHEN s80 =>
            IF (Stop_in = '1') THEN
               proximo_estado <= s0;
            ELSE
               IF (Duracao = '0' and Play_in = '1') THEN
                  proximo_estado <= s81;
               ELSE proximo_estado <= s80;
               END IF;
            END IF;
         WHEN s81 =>
            IF (Stop_in = '1') THEN
               proximo_estado <= s0;
            ELSE
               IF (Duracao = '0' and Play_in = '1') THEN
                  proximo_estado <= s82;
               ELSE proximo_estado <= s81;
               END IF;
            END IF;
           WHEN s82 =>
            IF (Stop_in = '1') THEN
               proximo_estado <= s0;
            ELSE
               IF (Duracao = '0' and Play_in = '1') THEN
                  proximo_estado <= s83;
               ELSE proximo_estado <= s82;
               END IF;
            END IF;
         WHEN s83 =>
            IF (Stop_in = '1') THEN
               proximo_estado <= s0;
            ELSE
               IF (Duracao = '0' and Play_in = '1') THEN
                  proximo_estado <= s84;
               ELSE proximo_estado <= s83;
               END IF;
            END IF;
            WHEN s84 =>
            IF (Stop_in = '1') THEN
               proximo_estado <= s0;
            ELSE
               IF (Duracao = '0' and Play_in = '1') THEN
                  proximo_estado <= s85;
               ELSE proximo_estado <= s84;
               END IF;
            END IF;
            WHEN s85 =>
            IF (Stop_in = '1') THEN
               proximo_estado <= s0;
            ELSE
               IF (Duracao = '0' and Play_in = '1') THEN
                  proximo_estado <= s86;
               ELSE proximo_estado <= s85;
               END IF;
            END IF;
            WHEN s86 =>
            IF (Stop_in = '1') THEN
               proximo_estado <= s0;
            ELSE
               IF (Duracao = '0' and Play_in = '1') THEN
                  proximo_estado <= s87;
               ELSE proximo_estado <= s86;
               END IF;
            END IF;
            WHEN s87 =>
            IF (Stop_in = '1') THEN
               proximo_estado <= s0;
            ELSE
               IF (Duracao = '0' and Play_in = '1') THEN
                  proximo_estado <= s88;
               ELSE proximo_estado <= s87;
               END IF;
            END IF;
            WHEN s88 =>
            IF (Stop_in = '1') THEN
               proximo_estado <= s0;
            ELSE
               IF (Duracao = '0' and Play_in = '1') THEN
                  proximo_estado <= s89;
               ELSE proximo_estado <= s88;
               END IF;
            END IF;
            WHEN s89 =>
            IF (Stop_in = '1') THEN
               proximo_estado <= s0;
            ELSE
               IF (Duracao = '0' and Play_in = '1') THEN
                  proximo_estado <= s90;
               ELSE proximo_estado <= s89;
               END IF;
            END IF;
            WHEN s91 =>
            IF (Stop_in = '1') THEN
               proximo_estado <= s0;
            ELSE
               IF (Duracao = '0' and Play_in = '1') THEN
                  proximo_estado <= s92;
               ELSE proximo_estado <= s91;
               END IF;
            END IF;
                  WHEN s92 =>
            IF (Stop_in = '1') THEN
               proximo_estado <= s0;
            ELSE
               IF (Duracao = '0' and Play_in = '1') THEN
                  proximo_estado <= s93;
               ELSE proximo_estado <= s92;
               END IF;
            END IF;
         WHEN s93 =>
            IF (Stop_in = '1') THEN
               proximo_estado <= s0;
            ELSE
               IF (Duracao = '0' and Play_in = '1') THEN
                  proximo_estado <= s94;
               ELSE proximo_estado <= s93;
               END IF;
            END IF;
           WHEN s94 =>
            IF (Stop_in = '1') THEN
               proximo_estado <= s0;
            ELSE
               IF (Duracao = '0' and Play_in = '1') THEN
                  proximo_estado <= s95;
               ELSE proximo_estado <= s94;
               END IF;
            END IF;
         WHEN s95 =>
            IF (Stop_in = '1') THEN
               proximo_estado <= s0;
            ELSE
               IF (Duracao = '0' and Play_in = '1') THEN
                  proximo_estado <= s96;
               ELSE proximo_estado <= s95;
               END IF;
            END IF;
            WHEN s96 =>
            IF (Stop_in = '1') THEN
               proximo_estado <= s0;
            ELSE
               IF (Duracao = '0' and Play_in = '1') THEN
                  proximo_estado <= s97;
               ELSE proximo_estado <= s96;
               END IF;
            END IF;
            WHEN s97 =>
            IF (Stop_in = '1') THEN
               proximo_estado <= s0;
            ELSE
               IF (Duracao = '0' and Play_in = '1') THEN
                  proximo_estado <= s98;
               ELSE proximo_estado <= s97;
               END IF;
            END IF;
            WHEN s98 =>
            IF (Stop_in = '1') THEN
               proximo_estado <= s0;
            ELSE
               IF (Duracao = '0' and Play_in = '1') THEN
                  proximo_estado <= s99;
               ELSE proximo_estado <= s98;
               END IF;
            END IF;
            WHEN s99 =>
            IF (Stop_in = '1') THEN
               proximo_estado <= s0;
            ELSE
               IF (Duracao = '0' and Play_in = '1') THEN
                  proximo_estado <= s100;
               ELSE proximo_estado <= s99;
               END IF;
            END IF;
            WHEN s100 =>
            IF (Stop_in = '1') THEN
               proximo_estado <= s0;
            ELSE
               IF (Duracao = '0' and Play_in = '1') THEN
                  proximo_estado <= s101;
               ELSE proximo_estado <= s100;
               END IF;
            END IF;
            WHEN s101 =>
            IF (Stop_in = '1') THEN
               proximo_estado <= s0;
            ELSE
               IF (Duracao = '0' and Play_in = '1') THEN
                  proximo_estado <= s102;
               ELSE proximo_estado <= s101;
               END IF;
            END IF;
            WHEN s102 =>
            IF (Stop_in = '1') THEN
               proximo_estado <= s0;
            ELSE
               IF (Duracao = '0' and Play_in = '1') THEN
                  proximo_estado <= s103;
               ELSE proximo_estado <= s102;
               END IF;
            END IF;
				 WHEN s103 =>
            IF (Stop_in = '1') THEN
               proximo_estado <= s0;
            ELSE
               IF (Duracao = '0' and Play_in = '1') THEN
                  proximo_estado <= s104;
               ELSE proximo_estado <= s103;
               END IF;
            END IF;
            WHEN s104 =>
            IF (Stop_in = '1') THEN
               proximo_estado <= s0;
            ELSE
               IF (Duracao = '0' and Play_in = '1') THEN
                  proximo_estado <= s105;
               ELSE proximo_estado <= s104;
               END IF;
            END IF;
            WHEN s105 =>
            IF (Stop_in = '1') THEN
               proximo_estado <= s0;
            ELSE
               IF (Duracao = '0' and Play_in = '1') THEN
                  proximo_estado <= s106;
               ELSE proximo_estado <= s105;
               END IF;
            END IF;
            WHEN s106 =>
            IF (Stop_in = '1') THEN
               proximo_estado <= s0;
            ELSE
               IF (Duracao = '0' and Play_in = '1') THEN
                  proximo_estado <= s107;
               ELSE proximo_estado <= s106;
               END IF;
            END IF;
            WHEN s107 =>
            IF (Stop_in = '1') THEN
               proximo_estado <= s0;
            ELSE
               IF (Duracao = '0' and Play_in = '1') THEN
                  proximo_estado <= s108;
               ELSE proximo_estado <= s107;
               END IF;
            END IF;
            WHEN s108 =>
            IF (Stop_in = '1') THEN
               proximo_estado <= s0;
            ELSE
               IF (Duracao = '0' and Play_in = '1') THEN
                  proximo_estado <= s109;
               ELSE proximo_estado <= s108;
               END IF;
            END IF;
            WHEN s109 =>
            IF (Stop_in = '1') THEN
               proximo_estado <= s0;
            ELSE
               IF (Duracao = '0' and Play_in = '1') THEN
                  proximo_estado <= s110;
               ELSE proximo_estado <= s109;
               END IF;
            END IF;
				WHEN s110 =>
            IF (Stop_in = '1') THEN
               proximo_estado <= s0;
            ELSE
               IF (Duracao = '0' and Play_in = '1') THEN
                  proximo_estado <= s0;
               ELSE proximo_estado <= s110;
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
            WHEN s0 => nota(0, ov_t2); --s0 apenas inicia a prox nota. Emite um pulso, estouro de contagem
            WHEN s1 => nota(AS4, ov_t1_8);
            WHEN s2 => nota(F4, ov_Dot2);
            WHEN s3 => nota(F4, ov_t1_8);
            WHEN s4 => nota(AS4, ov_t1_16);
            WHEN s5 => nota(GS4, ov_t1_16);
            WHEN s6 => nota(FS4, ov_Dot2);
            WHEN s7 => nota(GS4, ov_Dot2);
            WHEN s8 => nota(AS4, ov_t1_8);
            WHEN s9 => nota(FS4, ov_t1_8);
            WHEN s10 => nota(FS4, ov_t1_8);
            WHEN s11 => nota(AS4, ov_t1_16);
            WHEN s12 => nota(A4, ov_t1_16);
            WHEN s13 => nota(G4, ov_Dot2);
            WHEN s14 => nota(A4, ov_t1);
            WHEN s15 => nota(0, ov_t1_4);
            WHEN s16 => nota(AS4, ov_Dot4);
            WHEN s17 => nota(F4, ov_t1_8);
            WHEN s18 => nota(AS4, ov_t1_16);
            WHEN s19 => nota(AS4, ov_t1_16);
            WHEN s20 => nota(C5, ov_t1_16);
            WHEN s21 => nota(D5, ov_t1_16);
            WHEN s22 => nota(DS5, ov_t1_2);
            WHEN s23 => nota(F5, ov_t1_8);
				WHEN s24 => nota(F5, ov_t1_8); --s0 apenas inicia a prox nota. Emite um pulso, estouro de contagem
            WHEN s25 => nota(F5, ov_t1_8);
            WHEN s26 => nota(F5, ov_t1_16);
            WHEN s27 => nota(FS5, ov_t1_16);
            WHEN s28 => nota(GS5, ov_Dot2);
            WHEN s29 => nota(AS5, ov_t1_8);
            WHEN s30 => nota(AS5, ov_t1_8);
            WHEN s31 => nota(AS5, ov_t1_8);
            WHEN s32 => nota(GS5, ov_t1_16);
            WHEN s33 => nota(FS5, ov_Dot8);
            WHEN s34 => nota(GS5, ov_t1_16);
            WHEN s35 => nota(FS5, ov_t1_2);
            WHEN s36 => nota(F5, ov_t1_4);
            WHEN s37 => nota(F5, ov_Dot8);
            WHEN s38 => nota(DS5, ov_t1_16);
            WHEN s39 => nota(F5, ov_t1_2);
            WHEN s40 => nota(FS5, ov_t1_8);
            WHEN s41 => nota(F5, ov_t1_8);
            WHEN s42 => nota(DS5, ov_Dot8);
            WHEN s43 => nota(CS5, ov_t1_16);
            WHEN s44 => nota(DS5, ov_t1_2);
            WHEN s45 => nota(F5, ov_t1_8);
            WHEN s46 => nota(DS5, ov_t1_8);
            WHEN s47 => nota(CS5, ov_Dot8);
				WHEN s48 => nota(C5, ov_t1_16); --s0 apenas inicia a prox nota. Emite um pulso, estouro de contagem
            WHEN s49 => nota(D5, ov_t1_2);
            WHEN s50 => nota(E5, ov_t1_8);
            WHEN s51 => nota(G5, ov_t1_16);
            WHEN s52 => nota(F5, ov_t1_16);
            WHEN s53 => nota(F4, ov_t1_16);
            WHEN s54 => nota(F4, ov_t1_16);
            WHEN s55 => nota(F4, ov_t1_16);
            WHEN s56 => nota(F4, ov_t1_16);
            WHEN s57 => nota(F4, ov_t1_16);
            WHEN s58 => nota(F4, ov_t1_16);
            WHEN s59 => nota(F4, ov_t1_8);
            WHEN s60 => nota(F4, ov_t1_16);
            WHEN s61 => nota(F4, ov_t1_8);
            WHEN s62 => nota(F4, ov_t1_4);
            WHEN s63 => nota(AS4, ov_Dot4);
            WHEN s64 => nota(F4, ov_t1_8);
            WHEN s65 => nota(AS4, ov_t1_16);
            WHEN s66 => nota(AS4, ov_t1_16);
            WHEN s67 => nota(C5, ov_t1_16);
            WHEN s68 => nota(D5, ov_t1_16);
            WHEN s69 => nota(DS5, ov_t1_2);
            WHEN s70 => nota(F5, ov_t1_8);
            WHEN s71 => nota(F5, ov_t1_8);
				WHEN s72 => nota(F5, ov_t1_8); --s0 apenas inicia a prox nota. Emite um pulso, estouro de contagem
            WHEN s73 => nota(F5, ov_t1_16);
            WHEN s74 => nota(F5, ov_t1_16);
            WHEN s75 => nota(GS5, ov_Dot2);
            WHEN s76 => nota(AS5, ov_t1_4);
            WHEN s77 => nota(CS6, ov_t1_4);
            WHEN s78 => nota(C6, ov_t1_2);
            WHEN s79 => nota(A5, ov_t1_2);
            WHEN s80 => nota(F5, ov_Dot2);
            WHEN s81 => nota(FS5, ov_t1_4);
            WHEN s82 => nota(AS5, ov_t1_4);
            WHEN s83 => nota(A5, ov_t1_2);
            WHEN s84 => nota(F5, ov_t1_4);
            WHEN s85 => nota(F5, ov_Dot2);
            WHEN s86 => nota(FS5, ov_t1_4);
            WHEN s87 => nota(AS5, ov_t1_4);
            WHEN s88 => nota(A5, ov_t1_2);
            WHEN s89 => nota(F5, ov_t1_4);
            WHEN s90 => nota(D5, ov_Dot2);
            WHEN s91 => nota(DS5, ov_t1_4);
            WHEN s92 => nota(FS5, ov_t1_4);
            WHEN s93 => nota(F5, ov_t1_2);
            WHEN s94 => nota(CS5, ov_t1_2);
            WHEN s95 => nota(AS4,ov_Dot8);
				WHEN s96 => nota(C5, ov_t1_16); --s0 apenas inicia a prox nota. Emite um pulso, estouro de contagem
            WHEN s97 => nota(D5, ov_t1_2);
            WHEN s98 => nota(E5, ov_t1_8);
            WHEN s99 => nota(G5, ov_t1_16);
            WHEN s100 => nota(F5, ov_t1_16);
            WHEN s101 => nota(F4, ov_t1_16);
            WHEN s102 => nota(F4, ov_t1_16);
            WHEN s103 => nota(F4, ov_t1_16);
            WHEN s104 => nota(F4, ov_t1_16);
            WHEN s105 => nota(F4, ov_t1_16);
            WHEN s106 => nota(F4, ov_t1_16);
            WHEN s107 => nota(F4, ov_t1_8);
            WHEN s108 => nota(F4, ov_t1_16);
            WHEN s109 => nota(F4, ov_t1_8);
            WHEN s110 => nota(F4, ov_Dot2);
-- Não é necessário WHEN OTHERS pois
-- O controle é feito no processo L2
         END CASE;
      END IF;
   END PROCESS L3;
   
   --Atribuição contínua
   Clk_out <= Duracao AND Clk_in;
END bhv;