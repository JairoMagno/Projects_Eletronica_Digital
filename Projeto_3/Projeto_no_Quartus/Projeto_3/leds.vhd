LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY leds IS
	PORT (
			clock_in, stop, play : IN 	std_logic;
         leds_out: OUT std_logic_vector(4 DOWNTO 1)
         );
END leds;

ARCHITECTURE bhv OF leds IS
BEGIN
	PROCESS(clock_in)
	BEGIN
      
		IF(stop = '1') 	THEN	leds_out <= B"0111"; --Led 1 acesso quando a musica está em STOP (Prioridade 1)
      ELSIF(play = '1') THEN	leds_out <= B"1011"; --Led 2 acesso quando a música está em PLAY (Prioridade 2)
      ELSIF(play = '0')	THEN	leds_out <= B"1101"; --Led 3 acesso quando a música está em PAUSE (Prioridade 3)
      ELSE							leds_out	<= B"1110"; --Caso algum erro aconteça, o Led 4 estará acesso (Prioridade 4)
		
      END IF;
   END PROCESS;
END ARCHITECTURE;