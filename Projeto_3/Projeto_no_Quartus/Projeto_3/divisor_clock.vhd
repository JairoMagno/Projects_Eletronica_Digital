LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY divisor_clock IS
	PORT(
		clk_in 	 : IN  std_logic;		--Frequencia de entrada.
		overflow  : IN  std_logic_vector (27 DOWNTO 0);
		clk_out	 : OUT std_logic		--Frequencia de saída.
	);
END divisor_clock;

ARCHITECTURE arc_div OF divisor_clock IS
	SIGNAL contador	: 	integer := 1;		--Contador que vai de 1 até o overflow.
	SIGNAL aux			:	std_logic := '0'; --Sinal auxiliar, referente à saída clk_out.
	
BEGIN
	PROCESS(clk_in)
	BEGIN
		IF rising_edge(clk_in) THEN			--Só há troca de estados na borda de subida do clock (para valores IMPARES de overflow, ele divide pelo overflow+1. Isso poderia ser corrigido caso o PROCESS fosse sensível tanto a borda de subida quanto a de descida.
			IF(contador*2 >= to_integer(unsigned(overflow))) THEN	--Contador * 2 = overflow, pois o valor do overflow = número de CICLOS de entrada para que haja 1 CICLO na saída.
				aux <= NOT aux;					--Troca o estado
				contador <= 1;						--Reinicia o contador. Ele recebe 1, pois conta de 1 até overflow.
			ELSE
				contador <= contador + 1;		--Enquanto não chegou no overflow, contador está sendo incrementado.
				aux <= aux;							--Isso significa que a saída continua do jeito que está.
			END IF;
		END IF;
	END PROCESS;
	clk_out <= aux;								--Aux é a saída.
END arc_div;