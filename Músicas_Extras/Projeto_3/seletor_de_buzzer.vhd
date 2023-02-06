LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY seletor_de_buzzer IS 
	PORT(
		clock_in			:  IN std_logic;		--Código para jogar na saída apenas a música que estiver sendo executada
		buzzer_msc1 	: 	IN std_logic;
		buzzer_msc2 	: 	IN std_logic;
		buzzer_msc3 	: 	IN std_logic;
		buzzer_msc4 	: 	IN std_logic;
		buzzer_msc5 	: 	IN std_logic;
		selecao			:	IN std_logic_vector(2 downto 0) := "000";
		buzzer_placa	:	OUT std_logic
	);
END seletor_de_buzzer;


ARCHITECTURE arc_sdb OF seletor_de_buzzer IS

BEGIN
	PROCESS(clock_in)
	BEGIN
		CASE selecao IS							--De acordo com a selecao, o buzzer da placa irá receber a saída
			WHEN "000" =>								--do bloco da música 1 ou 2 ou 3
				buzzer_placa <= buzzer_msc1;
			WHEN "001" =>
				buzzer_placa <= buzzer_msc2;
			WHEN "010" =>
				buzzer_placa <= buzzer_msc3;
			WHEN "011" =>
				buzzer_placa <= buzzer_msc4;
			WHEN "100" =>
				buzzer_placa <= buzzer_msc5;	
			WHEN OTHERS =>
				buzzer_placa <= '0';
		END CASE;
	END PROCESS;
END ARCHITECTURE;