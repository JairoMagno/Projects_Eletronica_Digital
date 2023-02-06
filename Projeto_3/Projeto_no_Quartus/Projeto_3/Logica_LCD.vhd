LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY logica_LCD IS
  PORT( 	clk      : IN  std_logic;  						--clock principal		
			seletor  : IN 	std_logic;							--Selecao de musica
			lcd_busy : IN  std_logic;  						--feedback do controlador (1)ocupado/(0)disponível	
			
			lcd_ena 	: OUT std_logic;  						--retem os dados no controlador LCD
			lcd_bar	: OUT std_logic_vector(9 DOWNTO 0)  --(9) rs, (8) rw, (7..0) dados char
		);
END	logica_LCD;

ARCHITECTURE arc_logica OF logica_LCD IS

	TYPE estados IS (frase_1, frase_2);
	SIGNAL estado : estados := frase_1;
	
	--Registradores
	SIGNAL lcd_enable : std_logic;
	SIGNAL lcd_bus    : std_logic_vector(9 DOWNTO 0);

BEGIN

	--Atribuição contínua das saídas registradas
	lcd_ena <= lcd_enable;
	lcd_bar <= lcd_bus;

	PROCESS(clk)
		VARIABLE char : INTEGER RANGE 0 TO 34 := 0;
	BEGIN
		IF(rising_edge(clk)) THEN
			IF(seletor = '0') THEN
				estado <= frase_1;
			ELSIF(seletor = '1') THEN
				estado <= frase_2;
			END IF;
			
			IF estado = frase_1 THEN
				IF (lcd_busy = '0' AND lcd_enable = '0') THEN
					lcd_enable <= '1'; --habilita o LCD
					
					IF (char < 34) THEN
						char := char + 1; --incrementa o estado
					ELSE
						char := 0; --reinicia o estado
					END IF;
					
					CASE char IS --verifica o estado atual
						WHEN 0  => lcd_bus <= "00" & "10000000"; --inst. linha 1 // (" Frere Jacques  ")
						WHEN 1  => lcd_bus <= "10" & "00100000"; --Espaço
						WHEN 2  => lcd_bus <= "10" & "01000110"; --F
						WHEN 3  => lcd_bus <= "10" & "01110010"; --r
						WHEN 4  => lcd_bus <= "10" & "01100101"; --e  
						WHEN 5  => lcd_bus <= "10" & "01110010"; --r 
						WHEN 6  => lcd_bus <= "10" & "01100101"; --e   
						WHEN 7  => lcd_bus <= "10" & "00100000"; --espaço 
						WHEN 8  => lcd_bus <= "10" & "01001010"; --J   
						WHEN 9  => lcd_bus <= "10" & "01100001"; --a   
						WHEN 10 => lcd_bus <= "10" & "01100011"; --c   
						WHEN 11 => lcd_bus <= "10" & "11110001"; --q  
						WHEN 12 => lcd_bus <= "10" & "01110101"; --u
						WHEN 13 => lcd_bus <= "10" & "01100101"; --e  
						WHEN 14 => lcd_bus <= "10" & "01110011"; --s   
						WHEN 15 => lcd_bus <= "10" & "00100000"; --espaço    
						WHEN 16 => lcd_bus <= "10" & "00100000"; --ult char da linha 1//espaço     
						WHEN 17 => lcd_bus <= "00" & "11000000"; --inst. linha 2 // ("Popular Francesa")
						WHEN 18 => lcd_bus <= "10" & "01010000"; --prim. char da linha 2//P 
						WHEN 19 => lcd_bus <= "10" & "01101111"; --o
						WHEN 20 => lcd_bus <= "10" & "01110000"; --p
						WHEN 21 => lcd_bus <= "10" & "01110101"; --u 
						WHEN 22 => lcd_bus <= "10" & "01101100"; --l   
						WHEN 23 => lcd_bus <= "10" & "01100001"; --a
						WHEN 24 => lcd_bus <= "10" & "01110010"; --r  
						WHEN 25 => lcd_bus <= "10" & "00100000"; --espaço  
						WHEN 26 => lcd_bus <= "10" & "01000110"; --F   
						WHEN 27 => lcd_bus <= "10" & "01110010"; --r 
						WHEN 28 => lcd_bus <= "10" & "01100001"; --a 
						WHEN 29 => lcd_bus <= "10" & "01101110"; --n   
						WHEN 30 => lcd_bus <= "10" & "01100011"; --c   
						WHEN 31 => lcd_bus <= "10" & "01100101"; --e 
						WHEN 32 => lcd_bus <= "10" & "01110011"; --s   
						WHEN 33 => lcd_bus <= "10" & "01100001"; --a   			 
						WHEN OTHERS => lcd_enable <= '0'; --desabilita o LCD
					END CASE;
				ELSE
					lcd_enable <= '0'; --desabilita o LCD
				END IF;
				
			ELSE
				IF (lcd_busy = '0' AND lcd_enable = '0') THEN
					lcd_enable <= '1'; --habilita o LCD
					
					IF (char < 34) THEN
						char := char + 1; --incrementa o estado
					ELSE 
						char := 0; --reinicia o estado
					END IF;
					
					CASE char IS --verifica o estado atual
						WHEN 0  => lcd_bus <= "00" & "10000000"; --inst. linha 1 // ("Over The Rainbow")
						WHEN 1  => lcd_bus <= "10" & "01001111"; --prim. char da linha 1//O 
						WHEN 2  => lcd_bus <= "10" & "01110110"; --v 
						WHEN 3  => lcd_bus <= "10" & "01100101"; --e 
						WHEN 4  => lcd_bus <= "10" & "01110010"; --r 
						WHEN 5  => lcd_bus <= "10" & "00100000"; --espaço 
						WHEN 6  => lcd_bus <= "10" & "01010100"; --T   
						WHEN 7  => lcd_bus <= "10" & "01101000"; --h   
						WHEN 8  => lcd_bus <= "10" & "01100101"; --e  
						WHEN 9  => lcd_bus <= "10" & "00100000"; --espaço  
						WHEN 10 => lcd_bus <= "10" & "01010010"; --R   
						WHEN 11 => lcd_bus <= "10" & "01100001"; --a   
						WHEN 12 => lcd_bus <= "10" & "01101001"; --i  
						WHEN 13 => lcd_bus <= "10" & "01101110"; --n   
						WHEN 14 => lcd_bus <= "10" & "01100010"; --b   
						WHEN 15 => lcd_bus <= "10" & "01101111"; --o   
						WHEN 16 => lcd_bus <= "10" & "01110111"; --ult char da linha 1//w     
						WHEN 17 => lcd_bus <= "00" & "11000000"; --inst. linha 2 // ("  Yip Harburg   ")
						WHEN 18 => lcd_bus <= "10" & "00100000"; --prim. char da linha 2//espaço
						WHEN 19 => lcd_bus <= "10" & "00100000"; --espaço 
						WHEN 20 => lcd_bus <= "10" & "01011001"; --Y 
						WHEN 21 => lcd_bus <= "10" & "01101001"; --i
						WHEN 22 => lcd_bus <= "10" & "01110000"; --p   
						WHEN 23 => lcd_bus <= "10" & "00100000"; --espaço
						WHEN 24 => lcd_bus <= "10" & "01001000"; --H  
						WHEN 25 => lcd_bus <= "10" & "01100001"; --a  
						WHEN 26 => lcd_bus <= "10" & "01110010"; --r   
						WHEN 27 => lcd_bus <= "10" & "01100010"; --b  
						WHEN 28 => lcd_bus <= "10" & "01110101"; --u  
						WHEN 29 => lcd_bus <= "10" & "01110010"; --r 
						WHEN 30 => lcd_bus <= "10" & "01100111"; --g   
						WHEN 31 => lcd_bus <= "10" & "00100000"; --espaço  
						WHEN 32 => lcd_bus <= "10" & "00100000"; --espaço  
						WHEN 33 => lcd_bus <= "10" & "00100000";--ult. char da linha 2//espaço
						WHEN OTHERS => lcd_enable <= '0'; --desabilita o LCD
					END CASE;
					
				ELSE
					lcd_enable <= '0'; --desabilita o LCD
				END IF;
			END IF;
		END IF;
	END PROCESS;
END ARCHITECTURE;