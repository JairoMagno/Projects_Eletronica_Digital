LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY contador_assincrono IS
	PORT (
			clock_placa			:	IN std_logic;
			stop	 				:	IN	std_logic := '1';
			play					:	IN	std_logic := '0';
			seletor_display	:	OUT std_logic_vector(3 DOWNTO 0);
			segmentos			:	OUT std_logic_vector(7 DOWNTO 0)
			);
END contador_assincrono;

ARCHITECTURE arc_sinc OF contador_assincrono IS

	COMPONENT divisor_clock		--Usando divisor de clock já pronto
	PORT(
		clk_in	:	IN  std_logic;		
		overflow	:	IN  std_logic_vector (27 DOWNTO 0);
		clk_out	:	OUT std_logic		
		);
	END COMPONENT;

	CONSTANT overflow : integer := 5_000_000;		--Overflow decimo de segundo do contador

	SIGNAL of_binary 															:	std_logic_vector(27 DOWNTO 0); --Overflow em binário
	SIGNAL clock_1										 						:	std_logic;							 --Clock do decimo de segundo
	SIGNAL num_dec_seg, num_und_seg, num_dez_seg, num_und_min	:	integer := 0;						 --Numeros do contador
	SIGNAL cont_seletor 														:	integer := 1;
	SIGNAL aux_seletor														:	std_logic_vector(3 DOWNTO 0) := "1110";
	SIGNAL bcd																	:	integer := 0;						 --Numero bcd para ser decodificado
	SIGNAL of_aux1, of_aux2, of_aux3										:	std_logic := '0';					 --Overflow's dos dígitos
	SIGNAL FLAG_CONT															: integer := 0;
			
BEGIN	
    
	of_binary <= std_logic_vector(to_unsigned(overflow, of_binary'length));

	D1: divisor_clock PORT MAP (clock_placa, of_binary, clock_1); --5.000.000 de overflow Décimo Segundo

	PROCESS(clock_placa)
	BEGIN
	
		IF(stop = '1') THEN								--Caso stop, contador resetado e sempre em 0000
		
			num_dec_seg <= 0;
			num_und_seg <= 0;
			num_dez_seg <= 0;
			num_und_min <= 0;
			
		ELSIF(play = '1') THEN							--Caso play, tocar contador
		
			IF(rising_edge(clock_1)) THEN						--Executar primeiro dígito com o clock dividido
				num_dec_seg <= num_dec_seg + 1;		--Incrementar 
				IF(num_dec_seg >= 9) THEN				--Chegar em 9, voltar para 0
					num_dec_seg <= 0;
					of_aux1 <= '1';						--Overflow para o próximo dígit0
				END IF;
			END IF;											--Toda lógica se repete para os outros contadores
			
			IF(of_aux1 = '1') THEN						--Verificar overflow antetior
				num_und_seg <= num_und_seg + 1;
				IF(num_und_seg >= 9) THEN
					num_und_seg <= 0;
					of_aux2 <= '1';
				END IF;
				of_aux1 <= '0';							--Resetar seu próprio oveflow
			END IF;

			IF(of_aux2 = '1') THEN
				num_dez_seg <= num_dez_seg + 1;
				IF(num_dez_seg >= 5) THEN
					num_dez_seg <= 0;
					of_aux3 <= '1';
				END IF;
				of_aux2 <= '0';
			END IF;

			IF(of_aux3 = '1') THEN
				num_und_min <= num_und_min + 1;
				IF(num_und_min >= 9) THEN
					num_und_min <= 0;
				END IF;
				of_aux3 <= '0';
			END IF;
			
		END IF;
		
		IF(rising_edge(clock_placa)) THEN
			
			--Oscilador de seletor de display 1kHz (50.000.000/50.000)
			CASE cont_seletor IS
				WHEN 12500 => 						--Seletor é alterado de acordo com o contador
					seletor_display <= "1110";	--Aux = Seletor, para usar aux na verificação (IF)
					aux_seletor <= "1110";
					segmentos(7) <= '1';			--Ponto decimo segundo desligado
				WHEN 25000 =>
					seletor_display <= "1101";
					aux_seletor <= "1101";
					segmentos(7) <= '0';			--Ponto unidade segundo ligado
				WHEN 37500 =>
					seletor_display <= "1011";
					aux_seletor <= "1011";
					segmentos(7) <= '1';			--Ponto dezena segundo desligado
				WHEN 50000 =>
					seletor_display <= "0111";
					aux_seletor <= "0111";
					segmentos(7) <= '0';			--Ponto unidade minuto ligado
				WHEN OTHERS =>
					seletor_display <= aux_seletor;	--Manter valor do seletor
			END CASE;
			
			cont_seletor <= cont_seletor + 1;	--Incrementar contador
			
			IF(cont_seletor >= 50001) THEN		--Resetar contador
				cont_seletor <= 1;
			END IF;
			
			--Definir qual número é jogado na saída de acordo com o seletor
			CASE aux_seletor IS
				WHEN "1110" =>
					bcd <= num_dec_seg;	--bcd recebe o valor em inteiro                  
				WHEN "1101" =>
					bcd <= num_und_seg;
				WHEN "1011" =>
					bcd <= num_dez_seg;
				WHEN "0111" =>
					bcd <= num_und_min;
				WHEN OTHERS =>
					bcd <= 0;
			END CASE;
		
			--Decodificador para os segmentos do valor inteiro de bcd
			CASE bcd IS
				WHEN 0   =>
					segmentos(6 DOWNTO 0) <= "1000000"; --0 está mostrando
				WHEN 1   =>
					segmentos(6 DOWNTO 0) <= "1111001"; --1 está mostrando
				WHEN 2   =>
					segmentos(6 DOWNTO 0) <= "0100100"; --2 está mostrando
				WHEN 3   =>
					segmentos(6 DOWNTO 0) <= "0110000"; --3 está mostrando
				WHEN 4   =>
					segmentos(6 DOWNTO 0) <= "0011001"; --4 está mostrando
				WHEN 5   =>
					segmentos(6 DOWNTO 0) <= "0010010"; --5 está mostrando
				WHEN 6   =>
					segmentos(6 DOWNTO 0) <= "0000010"; --6 está mostrando
				WHEN 7   =>
					segmentos(6 DOWNTO 0) <= "1111000"; --7 está mostrando
				WHEN 8   =>
					segmentos(6 DOWNTO 0) <= "0000000"; --8 está mostrando
				WHEN 9   =>
					segmentos(6 DOWNTO 0) <= "0010000"; --9 está mostrando
				WHEN OTHERS =>
					segmentos(6 DOWNTO 0) <= "1111111"; --caso contrário, nenhum segmento estará mostrando
			END CASE;
		END IF;
	END PROCESS;
END ARCHITECTURE;