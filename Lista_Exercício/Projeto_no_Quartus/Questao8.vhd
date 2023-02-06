LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY Questao8 IS

	PORT(
			A		:	IN		std_logic_vector(3 DOWNTO 1);
			B		:	IN		std_logic_vector(3 DOWNTO 1);
			saida	:	OUT	std_logic
		 );
END ENTITY;

ARCHITECTURE arc_quest8 OF Questao8 IS

	SIGNAL aux	:	std_logic_vector(3 DOWNTO 1);

BEGIN
	
	F1 : FOR i IN aux'LOW TO aux'HIGH GENERATE
	BEGIN
		
		operacao1 : IF(i = 1) GENERATE
		BEGIN
		
			aux(i) <= A(i) OR B(i);
		
		END GENERATE operacao1;
		
		operacao2 : IF(i = 2) GENERATE
		BEGIN
		
			aux(i) <= A(i) NAND B(i);
		
		END GENERATE operacao2;
		
		operacao3 : IF(i = 3) GENERATE
		BEGIN
		
			aux(i) <= A(i) NOR B(i);
		
		END GENERATE operacao3;
	
	END GENERATE F1;
	
	saida <= aux(1) AND aux(2) AND aux(3);

END ARCHITECTURE;