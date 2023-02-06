LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY logica_LCD IS
  PORT( 	clk      : IN  std_logic;  						            --clock principal		
			seletor  : IN 	std_logic_vector(2 downto 0) := "000";		--Selecao de musica
			lcd_busy : IN  std_logic;  						            --feedback do controlador (1)ocupado/(0)disponível	
			
			lcd_ena 	: OUT std_logic;  						--retem os dados no controlador LCD
			lcd_bar	: OUT std_logic_vector(9 DOWNTO 0)  --(9) rs, (8) rw, (7..0) dados char
		);
END	logica_LCD;

ARCHITECTURE arc_logica OF logica_LCD IS

	TYPE estados IS (frase_1, frase_2, frase_3, frase_4, frase_5);
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
			IF(seletor = "000") THEN
				estado <= frase_1;
			ELSIF(seletor = "001") THEN
				estado <= frase_2;
			ELSIF(seletor = "010") THEN
				estado <= frase_3;
			ELSIF(seletor = "011") THEN
				estado <= frase_4;
			ELSIF(seletor = "100") THEN
				estado <= frase_5;
			ELSE
				estado <= frase_1;
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
						WHEN 0  => lcd_bus <= "00" & "10000000"; --inst. linha 1 // (" Zelda's Lullaby")
						WHEN 1  => lcd_bus <= "10" & "00100000"; --Espaço
						WHEN 2  => lcd_bus <= "10" & "01011010"; --Z
						WHEN 3  => lcd_bus <= "10" & "01100101"; --e
						WHEN 4  => lcd_bus <= "10" & "01101100"; --l  
						WHEN 5  => lcd_bus <= "10" & "01100100"; --d 
						WHEN 6  => lcd_bus <= "10" & "01100001"; --a   
						WHEN 7  => lcd_bus <= "10" & "00100111"; --' 
						WHEN 8  => lcd_bus <= "10" & "01110011"; --s   
						WHEN 9  => lcd_bus <= "10" & "00100000"; --espaço   
						WHEN 10 => lcd_bus <= "10" & "01001100"; --L   
						WHEN 11 => lcd_bus <= "10" & "01110101"; --u  
						WHEN 12 => lcd_bus <= "10" & "01101100"; --l
						WHEN 13 => lcd_bus <= "10" & "01101100"; --l  
						WHEN 14 => lcd_bus <= "10" & "01100001"; --a   
						WHEN 15 => lcd_bus <= "10" & "01100010"; --b    
						WHEN 16 => lcd_bus <= "10" & "01111001"; --ult char da linha 1//y     
						WHEN 17 => lcd_bus <= "00" & "11000000"; --inst. linha 2 // ("      Song      ")
						WHEN 18 => lcd_bus <= "10" & "00100000"; --prim. char da linha 2//espaço 
						WHEN 19 => lcd_bus <= "10" & "00100000"; --espaço
						WHEN 20 => lcd_bus <= "10" & "00100000"; --espaço
						WHEN 21 => lcd_bus <= "10" & "00100000"; --espaço 
						WHEN 22 => lcd_bus <= "10" & "00100000"; --espaço   
						WHEN 23 => lcd_bus <= "10" & "00100000"; --espaço
						WHEN 24 => lcd_bus <= "10" & "01010011"; --S  
						WHEN 25 => lcd_bus <= "10" & "01101111"; --o  
						WHEN 26 => lcd_bus <= "10" & "01101110"; --n   
						WHEN 27 => lcd_bus <= "10" & "01100111"; --g 
						WHEN 28 => lcd_bus <= "10" & "00100000"; --espaço 
						WHEN 29 => lcd_bus <= "10" & "00100000"; --espaço   
						WHEN 30 => lcd_bus <= "10" & "00100000"; --espaço   
						WHEN 31 => lcd_bus <= "10" & "00100000"; --espaço 
						WHEN 32 => lcd_bus <= "10" & "00100000"; --espaço   
						WHEN 33 => lcd_bus <= "10" & "00100000"; --espaço   			 
						WHEN OTHERS => lcd_enable <= '0'; --desabilita o LCD
					END CASE;
				ELSE
					lcd_enable <= '0'; --desabilita o LCD
				END IF;
				
			ELSIF estado = frase_2 THEN
				IF (lcd_busy = '0' AND lcd_enable = '0') THEN
					lcd_enable <= '1'; --habilita o LCD
					
					IF (char < 34) THEN
						char := char + 1; --incrementa o estado
					ELSE 
						char := 0; --reinicia o estado
					END IF;
					
					CASE char IS --verifica o estado atual
						WHEN 0  => lcd_bus <= "00" & "10000000"; --inst. linha 1 // ("  Song of The   ")
						WHEN 1  => lcd_bus <= "10" & "00100000"; --prim. char da linha 1//espaço 
						WHEN 2  => lcd_bus <= "10" & "00100000"; --espaço 
						WHEN 3  => lcd_bus <= "10" & "01010011"; --S 
						WHEN 4  => lcd_bus <= "10" & "01101111"; --o 
						WHEN 5  => lcd_bus <= "10" & "01101110"; --n 
						WHEN 6  => lcd_bus <= "10" & "01100111"; --g   
						WHEN 7  => lcd_bus <= "10" & "00100000"; --espaço   
						WHEN 8  => lcd_bus <= "10" & "01101111"; --o  
						WHEN 9  => lcd_bus <= "10" & "01100110"; --f 
						WHEN 10 => lcd_bus <= "10" & "00100000"; --espaço   
						WHEN 11 => lcd_bus <= "10" & "01010100"; --T   
						WHEN 12 => lcd_bus <= "10" & "01101000"; --h  
						WHEN 13 => lcd_bus <= "10" & "01100101"; --e   
						WHEN 14 => lcd_bus <= "10" & "00100000"; --espaço   
						WHEN 15 => lcd_bus <= "10" & "00100000"; --espaço   
						WHEN 16 => lcd_bus <= "10" & "00100000"; --ult char da linha 1//espaço     
						WHEN 17 => lcd_bus <= "00" & "11000000"; --inst. linha 2 // ("     Storms     ")
						WHEN 18 => lcd_bus <= "10" & "00100000"; --prim. char da linha 2//espaço
						WHEN 19 => lcd_bus <= "10" & "00100000"; --espaço 
						WHEN 20 => lcd_bus <= "10" & "00100000"; --espaço 
						WHEN 21 => lcd_bus <= "10" & "00100000"; --espaço
						WHEN 22 => lcd_bus <= "10" & "00100000"; --espaço  
						WHEN 23 => lcd_bus <= "10" & "01010011"; --S
						WHEN 24 => lcd_bus <= "10" & "01110100"; --t  
						WHEN 25 => lcd_bus <= "10" & "01101111"; --o  
						WHEN 26 => lcd_bus <= "10" & "01110010"; --r   
						WHEN 27 => lcd_bus <= "10" & "01101101"; --m  
						WHEN 28 => lcd_bus <= "10" & "01110011"; --s  
						WHEN 29 => lcd_bus <= "10" & "00100000"; --espaço 
						WHEN 30 => lcd_bus <= "10" & "00100000"; --espaço   
						WHEN 31 => lcd_bus <= "10" & "00100000"; --espaço  
						WHEN 32 => lcd_bus <= "10" & "00100000"; --espaço  
						WHEN 33 => lcd_bus <= "10" & "00100000";--ult. char da linha 2//espaço
						WHEN OTHERS => lcd_enable <= '0'; --desabilita o LCD
					END CASE;
				ELSE
					lcd_enable <= '0'; --desabilita o LCD
				END IF;
					
			ELSIF estado = frase_3 THEN
					IF (lcd_busy = '0' AND lcd_enable = '0') THEN
					lcd_enable <= '1'; --habilita o LCD
					
					IF (char < 34) THEN
						char := char + 1; --incrementa o estado
					ELSE
						char := 0; --reinicia o estado
					END IF;
					
					CASE char IS --verifica o estado atual
						WHEN 0  => lcd_bus <= "00" & "10000000"; --inst. linha 1 // ("   The Legend   ")
						WHEN 1  => lcd_bus <= "10" & "00100000"; --Espaço
						WHEN 2  => lcd_bus <= "10" & "00100000"; --Espaço
						WHEN 3  => lcd_bus <= "10" & "00100000"; --Espaço
						WHEN 4  => lcd_bus <= "10" & "01010100"; --T  
						WHEN 5  => lcd_bus <= "10" & "01101000"; --h 
						WHEN 6  => lcd_bus <= "10" & "01100101"; --e   
						WHEN 7  => lcd_bus <= "10" & "00100000"; --espaço 
						WHEN 8  => lcd_bus <= "10" & "01001100"; --L   
						WHEN 9  => lcd_bus <= "10" & "01100101"; --e   
						WHEN 10 => lcd_bus <= "10" & "01100111"; --g   
						WHEN 11 => lcd_bus <= "10" & "01100101"; --e  
						WHEN 12 => lcd_bus <= "10" & "01101110"; --n
						WHEN 13 => lcd_bus <= "10" & "01100100"; --d  
						WHEN 14 => lcd_bus <= "10" & "00100000"; --espaço   
						WHEN 15 => lcd_bus <= "10" & "00100000"; --espaço    
						WHEN 16 => lcd_bus <= "10" & "00100000"; --ult char da linha 1//espaço     
						WHEN 17 => lcd_bus <= "00" & "11000000"; --inst. linha 2 // (" Of Zelda Theme ")
						WHEN 18 => lcd_bus <= "10" & "00100000"; --prim. char da linha 2//espaço 
						WHEN 19 => lcd_bus <= "10" & "01001111"; --O
						WHEN 20 => lcd_bus <= "10" & "01100110"; --f
						WHEN 21 => lcd_bus <= "10" & "00100000"; --espaço 
						WHEN 22 => lcd_bus <= "10" & "01011010"; --Z   
						WHEN 23 => lcd_bus <= "10" & "01100101"; --e
						WHEN 24 => lcd_bus <= "10" & "01101100"; --l  
						WHEN 25 => lcd_bus <= "10" & "01100100"; --d  
						WHEN 26 => lcd_bus <= "10" & "01100001"; --a   
						WHEN 27 => lcd_bus <= "10" & "00100000"; --espaço 
						WHEN 28 => lcd_bus <= "10" & "01010100"; --T 
						WHEN 29 => lcd_bus <= "10" & "01101000"; --h   
						WHEN 30 => lcd_bus <= "10" & "01100101"; --e   
						WHEN 31 => lcd_bus <= "10" & "01101101"; --m 
						WHEN 32 => lcd_bus <= "10" & "01100101"; --e   
						WHEN 33 => lcd_bus <= "10" & "00100000"; --espaço   			 
						WHEN OTHERS => lcd_enable <= '0'; --desabilita o LCD
					END CASE;
				ELSE
					lcd_enable <= '0'; --desabilita o LCD
				END IF;
				
			ELSIF estado = frase_4 THEN
					IF (lcd_busy = '0' AND lcd_enable = '0') THEN
					lcd_enable <= '1'; --habilita o LCD
					
					IF (char < 34) THEN
						char := char + 1; --incrementa o estado
					ELSE
						char := 0; --reinicia o estado
					END IF;
					
					CASE char IS --verifica o estado atual
						WHEN 0  => lcd_bus <= "00" & "10000000"; --inst. linha 1 // (" Edwig's Theme  ")
						WHEN 1  => lcd_bus <= "10" & "00100000"; --Espaço
						WHEN 2  => lcd_bus <= "10" & "01000101"; --E
						WHEN 3  => lcd_bus <= "10" & "01100100"; --d
						WHEN 4  => lcd_bus <= "10" & "01110111"; --w  
						WHEN 5  => lcd_bus <= "10" & "01101001"; --i 
						WHEN 6  => lcd_bus <= "10" & "01100111"; --g   
						WHEN 7  => lcd_bus <= "10" & "00100111"; --' 
						WHEN 8  => lcd_bus <= "10" & "01110011"; --s   
						WHEN 9  => lcd_bus <= "10" & "00100000"; --espaço   
						WHEN 10 => lcd_bus <= "10" & "01010100"; --T   
						WHEN 11 => lcd_bus <= "10" & "01101000"; --h  
						WHEN 12 => lcd_bus <= "10" & "01100101"; --e
						WHEN 13 => lcd_bus <= "10" & "01101101"; --m  
						WHEN 14 => lcd_bus <= "10" & "01100101"; --e   
						WHEN 15 => lcd_bus <= "10" & "00100000"; --espaço    
						WHEN 16 => lcd_bus <= "10" & "00100000"; --ult char da linha 1//espaço     
						WHEN 17 => lcd_bus <= "00" & "11000000"; --inst. linha 2 // ("  Harry Potter  ")
						WHEN 18 => lcd_bus <= "10" & "00100000"; --prim. char da linha 2//espaço 
						WHEN 19 => lcd_bus <= "10" & "00100000"; --espaço
						WHEN 20 => lcd_bus <= "10" & "01001000"; --H
						WHEN 21 => lcd_bus <= "10" & "01100001"; --a 
						WHEN 22 => lcd_bus <= "10" & "01110010"; --r   
						WHEN 23 => lcd_bus <= "10" & "01110010"; --r
						WHEN 24 => lcd_bus <= "10" & "01111001"; --y  
						WHEN 25 => lcd_bus <= "10" & "00100000"; --espaço  
						WHEN 26 => lcd_bus <= "10" & "01010000"; --P   
						WHEN 27 => lcd_bus <= "10" & "01101111"; --o 
						WHEN 28 => lcd_bus <= "10" & "01110100"; --t 
						WHEN 29 => lcd_bus <= "10" & "01110100"; --t   
						WHEN 30 => lcd_bus <= "10" & "01100101"; --e   
						WHEN 31 => lcd_bus <= "10" & "01110010"; --r 
						WHEN 32 => lcd_bus <= "10" & "00100000"; --espaço   
						WHEN 33 => lcd_bus <= "10" & "00100000"; --espaço   			 
						WHEN OTHERS => lcd_enable <= '0'; --desabilita o LCD
					END CASE;
				ELSE
					lcd_enable <= '0'; --desabilita o LCD
				END IF;
				
			ELSIF estado = frase_5 THEN
					IF (lcd_busy = '0' AND lcd_enable = '0') THEN
					lcd_enable <= '1'; --habilita o LCD
					
					IF (char < 34) THEN
						char := char + 1; --incrementa o estado
					ELSE
						char := 0; --reinicia o estado
					END IF;
					
					CASE char IS --verifica o estado atual
						WHEN 0  => lcd_bus <= "00" & "10000000"; --inst. linha 1 // ("  Sailor Moon   ")
						WHEN 1  => lcd_bus <= "10" & "00100000"; --Espaço
						WHEN 2  => lcd_bus <= "10" & "00100000"; --Espaço
						WHEN 3  => lcd_bus <= "10" & "01010011"; --S
						WHEN 4  => lcd_bus <= "10" & "01100001"; --a  
						WHEN 5  => lcd_bus <= "10" & "01101001"; --i 
						WHEN 6  => lcd_bus <= "10" & "01101100"; --l   
						WHEN 7  => lcd_bus <= "10" & "01101111"; --o 
						WHEN 8  => lcd_bus <= "10" & "01110010"; --r   
						WHEN 9  => lcd_bus <= "10" & "00100000"; --espaço   
						WHEN 10 => lcd_bus <= "10" & "01001101"; --M   
						WHEN 11 => lcd_bus <= "10" & "01101111"; --o  
						WHEN 12 => lcd_bus <= "10" & "01101111"; --o
						WHEN 13 => lcd_bus <= "10" & "01101110"; --n  
						WHEN 14 => lcd_bus <= "10" & "00100000"; --espaço   
						WHEN 15 => lcd_bus <= "10" & "00100000"; --espaço    
						WHEN 16 => lcd_bus <= "10" & "00100000"; --ult char da linha 1//espaço     
						WHEN 17 => lcd_bus <= "00" & "11000000"; --inst. linha 2 // ("   Opening 01   ")
						WHEN 18 => lcd_bus <= "10" & "00100000"; --prim. char da linha 2//espaço 
						WHEN 19 => lcd_bus <= "10" & "00100000"; --espaço
						WHEN 20 => lcd_bus <= "10" & "00100000"; --Espaço
						WHEN 21 => lcd_bus <= "10" & "01001111"; --O 
						WHEN 22 => lcd_bus <= "10" & "01110000"; --p   
						WHEN 23 => lcd_bus <= "10" & "01100101"; --e
						WHEN 24 => lcd_bus <= "10" & "01101110"; --n  
						WHEN 25 => lcd_bus <= "10" & "01101001"; --i  
						WHEN 26 => lcd_bus <= "10" & "01101110"; --n   
						WHEN 27 => lcd_bus <= "10" & "01100111"; --g 
						WHEN 28 => lcd_bus <= "10" & "00100000"; --espaço 
						WHEN 29 => lcd_bus <= "10" & "00110000"; --0   
						WHEN 30 => lcd_bus <= "10" & "00110001"; --1   
						WHEN 31 => lcd_bus <= "10" & "00100000"; --espaço 
						WHEN 32 => lcd_bus <= "10" & "00100000"; --espaço   
						WHEN 33 => lcd_bus <= "10" & "00100000"; --espaço   			 
						WHEN OTHERS => lcd_enable <= '0'; --desabilita o LCD
					END CASE;
				ELSE
					lcd_enable <= '0'; --desabilita o LCD
				END IF;	
			END IF;
		END IF;
	END PROCESS;
END ARCHITECTURE;