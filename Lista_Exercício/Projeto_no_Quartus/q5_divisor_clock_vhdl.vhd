LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY q5_divisor_clock_vhdl IS
	PORT (clk_in : IN std_logic;
			clk_out: OUT std_logic);
	END q5_divisor_clock_vhdl;

ARCHITECTURE bhv OF q5_divisor_clock_vhdl IS
	CONSTANT NumPulsos_c : integer := 4;
	CONSTANT Overflow_c  : integer := NumPulsos_c - 1;
	SIGNAL   Toggle_s    : std_logic := '0';

BEGIN
	PROCESS(clk_in)
		VARIABLE Cnt_V : integer RANGE 0 TO Overflow_c;
		BEGIN
			IF rising_edge(clk_in) THEN
				IF Cnt_v < Overflow_c THEN
					Cnt_V := Cnt_v + 1;
					Toggle_s <= Toggle_s;
				ELSE
					Cnt_v := 0;
					Toggle_s <= not Toggle_s;
				END IF;
			END IF;
		END PROCESS;
		clk_out <= Toggle_s;
END bhv;