LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY SC_Prova IS

	PORT(
		A		:	IN		std_logic_vector(15 DOWNTO 0);
		B		:	IN		std_logic_vector(15 DOWNTO 0);
		saida	:	OUT	std_logic
	);

END ENTITY;

ARCHITECTURE arc_questSC OF SC_Prova IS

	SIGNAL aux	:	std_logic_vector(15 DOWNTO 0);

BEGIN
	
	F1 : FOR i IN aux'LOW TO aux'HIGH GENERATE
	BEGIN
		
		operacao1 : IF(i = 0) GENERATE
		BEGIN
		
			aux(i) <= A(i) NAND B(i);
		
		END GENERATE operacao1;
		
		operacao2 : IF((i REM 2 = 1) AND i /= 0 AND i /= 15) GENERATE
		BEGIN
		
			aux(i) <= A(i) XNOR B(i);
		
		END GENERATE operacao2;
		
		operacao3 : IF((i REM 2 = 0) AND i /= 0 AND i /= 15) GENERATE
		BEGIN
		
			aux(i) <= A(i) XOR B(i);
		
		END GENERATE operacao3;
		
		operacao4 : IF(i = 15) GENERATE
		BEGIN
		
			aux(i) <= A(i) NOR B(i);
		
		END GENERATE operacao4;
	
	END GENERATE F1;
	
	saida <= NOT (aux(0) AND aux(1) AND aux(2) AND aux(3) AND aux(4) AND aux(5) AND aux(6) AND aux(7) AND aux(8) AND aux(9) AND aux(10) AND aux(11) AND aux(12) AND aux(13) AND aux(14) AND aux(15));

END ARCHITECTURE;