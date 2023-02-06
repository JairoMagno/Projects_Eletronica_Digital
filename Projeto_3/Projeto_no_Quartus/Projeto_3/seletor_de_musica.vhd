LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY seletor_de_musica IS 
	PORT(
		clock_in 		: 	IN std_logic;
		selecao			:	IN std_logic := '0';
		clock_mus1	:	OUT std_logic;
		clock_mus2	:	OUT std_logic
	);
END seletor_de_musica;


ARCHITECTURE arc_sdm OF seletor_de_musica IS

BEGIN
	PROCESS(clock_in)
	BEGIN
		CASE selecao IS						--Selecao alternada pelo botao
			WHEN '0' => 						--Música 1 selecionada, libera clock para o bloco 1 e o outro não
				clock_mus2 <= '0';
				clock_mus1 <= clock_in;
			WHEN '1' =>						--Música 2 selecionada, libera clock para o bloco 2 e o outro não
				clock_mus1 <= '0';
				clock_mus2 <= clock_in;
			WHEN OTHERS =>						--Caso outros, provável erro, nenhuma música tocando
				clock_mus1 <= '0';
				clock_mus2 <= '0';
		END CASE;
	END PROCESS;
END ARCHITECTURE;