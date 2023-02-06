LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY debounce IS
	GENERIC(
		overflow : integer := 1_500_000	--Constante de overflow do contador = 1500000 = 30ms
	);

	PORT(
		clk 		: IN  std_logic;			--Clock da placa
		botao		: IN  std_logic;			--Sinal de entrada do botão
		output	: OUT std_logic			--Sinal de saída do botão
	);
END debounce;

ARCHITECTURE arc_deb OF debounce IS
	SIGNAL contador: integer := 1;						--Inteiro de 0 a 1500000
	SIGNAL ff  		: std_logic_vector(1 DOWNTO 0);	--Dois bits para armazenar os estados
	SIGNAL aux 		: std_logic;							--Bit lógico referente a saída da XOR

BEGIN
	PROCESS (clk)
	BEGIN		
		aux <= ff(0) XOR ff(1);					--Aux tem saída 0 quando os dois ffs são iguais
		
		IF (rising_edge(clk)) THEN
			
			ff(1) <= ff(0);						--ff(1) recebe o estado anterior
			ff(0) <= botao;					   --ff(0) recebe o estado atual do botão
			
			IF aux = '0' THEN						--Quando os dois ffs são iguais, contador inicia

				IF (contador*2 >= overflow) THEN
					output <= ff(1);
					contador <= 0;				
				ELSE									--Enquanto o contador não chegou no overflow, incrementa
					contador <= contador + 1;
				END IF;
				
			ELSE
				contador <= 1;						--Contador não inicia se sinal não estiver estável, sempre resetado
			END IF;	
		END IF;
	END PROCESS;
END arc_deb;