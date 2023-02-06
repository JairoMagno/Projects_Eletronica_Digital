LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY temporizador IS
PORT ( 
		 Clock_in, Disparo 	: IN std_logic;
		 Overflow   			: IN std_logic_vector (27 DOWNTO 0);	
		 Saida      			: OUT std_logic := '0'
	  );
END temporizador;

ARCHITECTURE Comportamento OF temporizador IS
	SIGNAL Contagem : integer := 0;  --Contagem a ser feita. Está definido incialmente em 0.
	
BEGIN
	PROCESS (Clock_in)
	BEGIN 
	
		IF rising_edge(Clock_in) THEN
			IF (Disparo = '1' AND Contagem = 0) THEN
			
				Contagem <= to_integer(unsigned(Overflow)); --Disparo não ativado. Seto minha contagem paro o overflow
				
			ELSIF (Disparo = '0' AND Contagem = 0) THEN 
			
				Contagem <= 0;					  --Retém em 0. Disparo ativado
			
			ELSE Contagem <= Contagem - 1 ; --Caso não seja uma das alternativas acima, a contagem irá apenas decrementar.
			
			END IF;	
		END IF;
		
		IF Contagem /= 0 THEN Saida <= '1'; --Saída estará em nível alto enquanto a contagem estiver ocorrendo
		ELSE Saida <= '0';                  --Saída estará em nível baixo enquanto a contagem não estiver ocorrendo
		END IF;
	END PROCESS;
END ARCHITECTURE;