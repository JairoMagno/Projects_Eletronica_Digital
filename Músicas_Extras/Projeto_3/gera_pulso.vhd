LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY gera_pulso IS
	PORT(
		clock_in	:	IN		std_logic;				--Clock da placa
		botao_in	:	IN		std_logic;				--Sinal de entrada vindo do debouncer
		pulso		:	OUT 	std_logic				--Pulso de saída
	);
END gera_pulso;

ARCHITECTURE arc_gp OF gera_pulso IS
	SIGNAL FF :	std_logic_vector(1 DOWNTO 0);	--Dois bits de armazenamento de estado do botão
	
BEGIN

	PROCESS(clock_in)									--Processo sensível ao clock
	BEGIN
		pulso <= (NOT FF(0)) NOR FF(1);			--Solta um pulso na borda de subida, comparando estado atual (ff(0)='1') e estado anterior (ff(1)='0')
		IF(rising_edge(clock_in)) THEN			--NOR sai 1 quando recebe 0 e 0 na entrada, por isso ff(0) está barrado
			FF(0) <= botao_in;						--ff(0) armazena o estado atual do botão
			FF(1) <= FF(0);							--ff(1) armazena o estado anterior do botão
		END IF;	
	END PROCESS;
END arc_gp;