LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY Mute IS
	PORT (	  
		mute				: IN  std_logic;
		buzzer_placa	: IN  std_logic;
		buzzer_saida	: OUT std_logic
	);
END Mute;

ARCHITECTURE bhv OF Mute IS 
BEGIN 
	buzzer_saida <= mute AND buzzer_placa;  --Saída só receberá o buzzer da entrada, quando mute for 1.
 END ARCHITECTURE;