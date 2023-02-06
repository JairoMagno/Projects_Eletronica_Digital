LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.all;

ENTITY controle IS 
	PORT(clk_in								:	IN  std_logic;
		  play_in, stop_in, sel_in		:	IN  std_logic;
		  play_out							:	OUT std_logic := '0';
		  stop_out							:	OUT std_logic := '1';
		  sel_out							:	OUT std_logic_vector(2 downto 0)
		  );
END controle;

ARCHITECTURE bhv OF controle IS 
	TYPE FSM IS (PAUSE, STOP, PLAY);
	
	COMPONENT gera_pulso	--Componente de Gerar Pulso
		PORT
		(clock_in		 	 								: IN  std_logic;
		 botao_in 		 	 								: IN  std_logic;
		 pulso			 	 								: OUT std_logic);
	END COMPONENT;
		
	SIGNAL selec                       				: std_logic_vector(2 downto 0) := "000";	--Sinal auxiliar, é um vetor que contém qual música está selecionada
	SIGNAL play_pulso, sele_pulso, stop_pulso		: std_logic := '0';	--Sinal auxiliar, que é a saída do gera pulso

BEGIN 
	--Usando o componente gera_pulso
	gp2 : gera_pulso PORT MAP (clock_in => clk_in, botao_in => play_in, pulso => play_pulso); --Criados os objetos gera_pulso
	gp3 : gera_pulso PORT MAP (clock_in => clk_in, botao_in => sel_in,  pulso => sele_pulso); 
	gp4 : gera_pulso PORT MAP (clock_in => clk_in, botao_in => stop_in, pulso => stop_pulso); 
	
	PROCESS(clk_in)
	VARIABLE maquina1 : FSM := STOP;	--Criando uma máquina de estados do tipo FSM iniciando em STOP
	BEGIN
	IF rising_edge(clk_in)	THEN
			CASE maquina1 IS
				WHEN PAUSE =>
					IF    (stop_pulso) = '1' THEN		--Pulso em stop, alterar estado para STOP
						maquina1 := STOP;
					ELSIF (play_pulso) = '1' THEN		--Pulso em play, alterar estado para PLAY
						maquina1 := PLAY;
					END IF;
		
				WHEN STOP =>
					
					IF    (play_pulso) = '1' THEN 	--Pulso em play, alterar estado para PLAY
						maquina1 := PLAY;
					ELSIF (sele_pulso) = '1' THEN		--Inversor selação de música
						IF selec = "000" THEN
							selec <= "001";
						ELSIF selec = "001" THEN
							selec <= "010";
					   ELSIF selec = "010" THEN
							selec <= "011";
						ELSIF selec = "011" THEN
							selec <= "100";
						ELSIF selec = "100" THEN
							selec <= "000";
						END IF;
					END IF;
				
				WHEN PLAY =>
				
					IF    (stop_pulso) = '1' THEN		--Pulso em stop, alterar estado para STOP
						maquina1 := STOP;
					ELSIF (play_pulso) = '1' THEN		--Pulso em play, alterar estado para PLAY
						maquina1 := PAUSE;
					END IF;
					
				END CASE;
				
				CASE maquina1 IS
					WHEN PAUSE =>				--PAUSE
						play_out <= '0';
						stop_out <= '0';
					WHEN STOP =>				--STOP
						play_out <= '0';
						stop_out <= '1';
					WHEN PLAY =>				--PLAY
						play_out <= '1';
						stop_out <= '0';
				END CASE;
	END IF;
	
	END PROCESS;
	
	sel_out <= selec;
	
END bhv;