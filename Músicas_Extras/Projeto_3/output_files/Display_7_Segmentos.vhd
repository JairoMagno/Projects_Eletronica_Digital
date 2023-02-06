LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY Display_7_Segmentos IS
	PORT (
			Clock_in         : IN  std_logic;
         play          : IN  std_logic;
         stop          : IN  std_logic;
			display_select: OUT std_logic_vector(3 DOWNTO 0);
         segmentos     : OUT std_logic_vector(7 DOWNTO 0)
			);
END Display_7_Segmentos;

ARCHITECTURE bhv OF Display_7_Segmentos IS 

	COMPONENT divisor_clock      --Chamando o código do divisor de clock
		PORT(
				clk_in 	 : IN  std_logic;		
				overflow  : IN  std_logic_vector (27 DOWNTO 0);
				clk_out	 : OUT std_logic		
			 );
		END COMPONENT;
		
	COMPONENT Contador           --Chamando o código do contador
		GENERIC (maximo : natural);
		PORT(
				clock_in     : IN  std_logic;
				enable       : IN  std_logic;
				reset        : IN  std_logic;
				contagem     : OUT std_logic_vector(3 DOWNTO 0);
				carry_out    : OUT std_logic
			 );
		END COMPONENT; 
		
	--Variáveis auxiliares	
	SIGNAL contador_decimo_segundo : std_logic_vector(3 DOWNTO 0);  --Sinal contador do décimo de segundo
   SIGNAL carry_decimo_segundo    : std_logic;                     
   SIGNAL contador_segundo        : std_logic_vector(3 DOWNTO 0);  --Sinal contador do segundo
   SIGNAL carry_segundo           : std_logic;
   SIGNAL contador_dezena_segundo : std_logic_vector(3 DOWNTO 0);  --Sinal contador da dezena de segundo
   SIGNAL carry_dezena_segundo    : std_logic;
   SIGNAL contador_minuto         : std_logic_vector(3 DOWNTO 0);  --Sinal contador do minuto
   SIGNAL bcd                     : std_logic_vector (3 DOWNTO 0);
   SIGNAL clock_cteX10Hz          : std_logic := '0';              --Clock o qual será mandado para o proximo contador
   SIGNAL clock_Display           : std_logic := '0';              --Frequência a qual os display trocam entre si. 
   SIGNAL display                 : integer RANGE 0 TO 3;          --Sinal para qual display irá ficar ligado.
   SIGNAL div1                    : std_logic_vector(27 DOWNTO 0); --Sinal para a divisao com a qual os displays mudam entre si.
   SIGNAL div2                    : std_logic_vector(27 DOWNTO 0); --Sinal para a divisao de clock que será recebida pelos contadores
	
	
	BEGIN	
	div1 <= std_logic_vector(to_unsigned(5000,div1'LENGTH));    --Clock da placa dividido por 5k. Frequência de 10kHz.
   div2 <= std_logic_vector(to_unsigned(5000000,div2'LENGTH)); --Clock da placa dividido por 5M. Frequência de 10Hz
	
   divClockDisplay  : divisor_clock      PORT MAP (Clock_in, div1, clock_Display);
   divClockCteX10Hz : divisor_clock      PORT MAP (Clock_in, div2, clock_cteX10Hz);
	C1: Contador GENERIC MAP (maximo =>9) PORT MAP (clock_cteX10Hz, play, stop, contador_decimo_segundo, carry_decimo_segundo); --décimo de segundo
   C2: Contador GENERIC MAP (maximo =>9) PORT MAP (carry_decimo_segundo, play, stop, contador_segundo, carry_segundo); --segundo
   C3: Contador GENERIC MAP (maximo =>5) PORT MAP (carry_segundo, play, stop, contador_dezena_segundo, carry_dezena_segundo); --dezena de segundo
   C4: Contador GENERIC MAP (maximo =>9) PORT MAP (carry_dezena_segundo, play, stop, contador_minuto); --minuto
	
	
	PROCESS(display)
	
   BEGIN
   CASE display IS  --Seleção de qual display deve estar ligado. '0' representa o ON e '1' representa o OFF.
         WHEN 0 => display_select(3 DOWNTO 0) <= B"0111"; 
         bcd(3 DOWNTO 0) <= contador_minuto(3 DOWNTO 0);         --Display responsável por mostrar os minutos.
         segmentos(7) <= '0'; -- O '0' representa que o ponto está ligado, já que a placa é anôdo comum.
         WHEN 1 => display_select(3 DOWNTO 0) <= B"1011";
         bcd(3 DOWNTO 0) <= contador_dezena_segundo(3 DOWNTO 0); --Display responsável por mostrar a dezenas por segundo.   
         segmentos(7) <= '1'; -- O '1' representa que o ponto está desligado, já que a placa é anôdo comum.
         WHEN 2 => display_select(3 DOWNTO 0) <= B"1101";
         bcd(3 DOWNTO 0) <= contador_segundo(3 DOWNTO 0);        --Display responsável por mostrar os segundos.
         segmentos(7) <= '0';
         WHEN 3 => display_select(3 DOWNTO 0) <= B"1110";
         bcd(3 DOWNTO 0) <= contador_decimo_segundo(3 DOWNTO 0); --Display responsável por mostrar os décimos de segundos.
         segmentos(7) <= '1';
         WHEN OTHERS => display_select(3 DOWNTO 0) <= B"1111";       --Caso contrário, todos os displays estaram desligados.
         END CASE;
   END PROCESS;
   
   PROCESS(bcd)
	
   BEGIN
      CASE bcd IS --A partir de qual display for ligado, será definido qual segmento será ligado.
         WHEN X"0"   => segmentos(6 DOWNTO 0) <= B"1000000"; --0 está mostrando
         WHEN X"1"   => segmentos(6 DOWNTO 0) <= B"1111001"; --1 está mostrando
         WHEN X"2"   => segmentos(6 DOWNTO 0) <= B"0100100"; --2 está mostrando
         WHEN X"3"   => segmentos(6 DOWNTO 0) <= B"0110000"; --3 está mostrando
         WHEN X"4"   => segmentos(6 DOWNTO 0) <= B"0011001"; --4 está mostrando
         WHEN X"5"   => segmentos(6 DOWNTO 0) <= B"0010010"; --5 está mostrando
         WHEN X"6"   => segmentos(6 DOWNTO 0) <= B"0000010"; --6 está mostrando
         WHEN X"7"   => segmentos(6 DOWNTO 0) <= B"1111000"; --7 está mostrando
         WHEN X"8"   => segmentos(6 DOWNTO 0) <= B"0000000"; --8 está mostrando
         WHEN X"9"   => segmentos(6 DOWNTO 0) <= B"0010000"; --9 está mostrando
         WHEN OTHERS => segmentos(6 DOWNTO 0) <= B"1111111"; --caso contrário, nenhum segmento estará mostrando
         END CASE;
   END PROCESS;
   
END bhv;
	
	