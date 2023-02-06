LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
ENTITY FrereJacques IS
PORT (
			Clk_in, Duracao, Stop_in, Play_in : IN std_logic;
			Clk_out, Disparo                  : OUT std_logic := '0';
         Temp_out, Freq_out                : OUT std_logic_vector (27 DOWNTO 0)
      );
END FrereJacques;
ARCHITECTURE bhv OF FrereJacques IS
  -- Subprograma para aplicar o tempo e frequencia
  -- Para atribuição de saídas nos estados
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
   CONSTANT F3  : integer := 71633; --Fá3
   CONSTANT G3  : integer := 63775; -- Sol3
   CONSTANT A3  : integer := 56818; -- Lá 3
   CONSTANT Bb3 : integer := 53648; -- Sib3
   CONSTANT C4  : integer := 47801; -- Dó4
   CONSTANT D4  : integer := 42553; -- Ré4
   CONSTANT G4  : integer := 31289; -- Sol4
   CONSTANT F4  : integer := 35790; -- Fá4
   
   -- Overflow para tempos (50MHz)
   -- BPM igual a 60 implica que t1, 1 batida, representa 1 seg
   -- BPM igual a 120 implica que t1, 1 batida, representa 0.5 seg
   CONSTANT BPM      : integer := 120; --batidas por minuto
   CONSTANT BPS      : integer := BPM / 60; --batidas por segundo
   CONSTANT ov_t4    : integer := (4 * clk_FPGA) / BPS; --overflow 4 batidas
   CONSTANT ov_t2    : integer := (2 * clk_FPGA) / BPS; --overflow 2 batidas
   CONSTANT ov_t1    : integer := clk_FPGA / BPS;       --overflow 1 batida
   CONSTANT ov_t1_2  : integer := (clk_FPGA / 2) / BPS; --overflow 1/2 batidas
   CONSTANT ov_t1_4	: integer := (clk_FPGA / 4) / BPS; --overflow 1/4 batidas

   -- FSM Declaração de estados 
   TYPE estados IS (
                  s0,--pausa inicial
                  s1, s2, s3, s4, s5, s6, s7, s8,s9,
                  s10, s11, s12, s13, s14, s15, s16, s17, s18, s19,
                  s20, s21, s22, s23, s24, s25, s26, s27, s28, s29,
                  s30, s31, s32
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
                  proximo_estado <= s0;
               ELSE proximo_estado <= s32;
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
            WHEN s0 => nota(0, ov_t4); --s0 apenas inicia a prox nota. Emite um pulso, ou seja estouro de contagem
            WHEN s1 => nota(F3, ov_t1); --fá3
            WHEN s2 => nota(G3, ov_t1); --sol3	
				WHEN s3 => nota(A3, ov_t1); --lá3
            WHEN s4 => nota(F3, ov_t1);--fá3
				WHEN s5 => nota(F3, ov_t1); --fá3
            WHEN s6 => nota(G3, ov_t1);--sol3
				WHEN s7 => nota(A3, ov_t1); --lá3
            WHEN s8 => nota(F3, ov_t1); --fá3
				WHEN s9 => nota(A3, ov_t1); --lá3
            WHEN s10 => nota(Bb3, ov_t1);--sib3
				WHEN s11 => nota(C4, ov_t2);-- dó4
            WHEN s12 => nota(A3, ov_t1);--lá3
				WHEN s13 => nota(Bb3, ov_t1); --sib3
            WHEN s14 => nota(C4, ov_t2);--dó4
				WHEN s15 => nota(C4, ov_t1_2); --dó4
            WHEN s16 => nota(D4, ov_t1_2); --ré4
				WHEN s17 => nota(C4, ov_t1_2); --dó4
				WHEN s18 => nota(Bb3, ov_t1_2); --sib3
            WHEN s19 => nota(A3, ov_t1);--lá3 
				WHEN s20 => nota(F3, ov_t1); --fá3
            WHEN s21 => nota(C4, ov_t1_2);--dó4
				WHEN s22 => nota(D4, ov_t1_2); --ré4
            WHEN s23 => nota(C4, ov_t1_2); --dó4
				WHEN s24 => nota(Bb3, ov_t1_2); --sib3
				WHEN s25 => nota(A3, ov_t1); --lá3
				WHEN s26 => nota(F3, ov_t1); --fá3
            WHEN s27 => nota(G3, ov_t1);--sol4
				WHEN s28 => nota(C4, ov_t1); --dó4
            WHEN s29 => nota(F4, ov_t2);--fá4
				WHEN s30 => nota(G4, ov_t1); --sol4
            WHEN s31 => nota(C4, ov_t1);--dó4
				WHEN s32 => nota(F4, ov_t2); --fá4
		
--Não é necessário WHEN OTHERS pois
--o controle é feito no processo L2
         END CASE;
      END IF;
   END PROCESS L3;
   
   --Atribuição contínua
   Clk_out <= Duracao AND Clk_in;
END bhv;