LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY estrutura_TheLegendOfZelda IS
	PORT(
		clock_est, stop, play	: IN std_logic;
		clock_dividido          : OUT std_logic
	);
END estrutura_TheLegendOfZelda;

ARCHITECTURE arc_est_TLOZ OF estrutura_TheLegendOfZelda IS
	SIGNAL Disparo_est, Saida_est, saida_msc : std_logic;			--Sinais auxiliares para interconectar os códigos
	SIGNAL Overflow_temp_est : std_logic_vector (27 DOWNTO 0);
	SIGNAL overflow_dc_est : std_logic_vector (27 DOWNTO 0);
	
	COMPONENT temporizador IS												--Instanciando componente do temporidazor
	PORT(
		 Clock_in, Disparo 	: IN std_logic;
		 Overflow   			: std_logic_vector (27 DOWNTO 0);
		 Saida      			: OUT std_logic
		);
	END COMPONENT;
		
	COMPONENT divisor_clock IS												--Instanciando componente do divisor de clock
	PORT(
		clk_in 	 : IN  std_logic;
		overflow  : std_logic_vector (27 DOWNTO 0);
		clk_out	 : OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT TheLegendOfZelda IS												--Instanciando componente da música
	PORT(
			Clk_in, Duracao, Stop_in, Play_in : IN std_logic;
			Clk_out, Disparo                  : OUT std_logic;
         Temp_out, Freq_out                : OUT std_logic_vector (27 DOWNTO 0)
		);
	END COMPONENT;
	
BEGIN
	
	temp	:	temporizador PORT MAP(		--Mapeamento das entradas e saídas do temporizador
		Clock_in => clock_est,
		Disparo => Disparo_est,
		Overflow => Overflow_temp_est,
		Saida => Saida_est
	);
		
		
	div_clk : divisor_clock PORT MAP(	--Mapeamento das entradas e saídas do divisor de clock
		clk_in => clock_est,
		overflow => overflow_dc_est,
		clk_out => clock_dividido
	);
	
	controle : TheLegendOfZelda PORT MAP(	--Mapeamento das entradas e saídas do bloco musical
		Clk_in => clock_est,
		stop_in => stop,
		play_in => play,
		Disparo => Disparo_est,
		Duracao => Saida_est,
		Temp_out => Overflow_temp_est,
		Freq_out => overflow_dc_est,
		Clk_out => saida_msc
	);
	
END ARCHITECTURE;