LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY debouncers IS
	PORT(clk_in 				   : IN  std_logic;	--Clock da placa
		  b1, b2, b3, b4 		   : IN  std_logic;	--Botões de entrada
		  mute, play, sel, stop : OUT std_logic	--Saídas já estabilizadas (do debounce)
	);
END debouncers;

ARCHITECTURE deb OF debouncers IS
	COMPONENT debounce									--Declarando o componente debounce
		PORT(clk   : IN  std_logic;					--Entrada clk, que é o clock da placa
			  botao : IN  std_logic;					--Sinal de um botão
			  output: OUT std_logic);					--Saída estabilizada
		END COMPONENT;
		
	SIGNAL saida : std_logic_vector (4 DOWNTO 1);--Vetor lógico de saídas
	
BEGIN
	--Usando o componente debounce
	d1 : debounce PORT MAP (clk => clk_in, botao => b1, output => saida(1)); 
	d2 : debounce PORT MAP (clk => clk_in, botao => b2, output => saida(2)); 
	d3 : debounce PORT MAP (clk => clk_in, botao => b3, output => saida(3)); 
	d4 : debounce PORT MAP (clk => clk_in, botao => b4, output => saida(4));
	
    PROCESS(clk_in)
    BEGIN
      --Descrevendo as saídas
      mute <= saida(1);		
      play <= saida(2);
      sel  <= saida(3);
      stop <= saida(4);
      
    END PROCESS;
END deb;