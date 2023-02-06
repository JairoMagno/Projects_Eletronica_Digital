module debounce

//Parâmetros
#(
	parameter overflow = 1_500_000	// 1.500.000 = 30ms
)

//Entradas e Saídas
(
	input clk,					//Clock placa
	input button,				//Botao de entrada
	output reg debounced		//Sinal estabilizado
);

	reg [($clog2(overflow) - 1) : 0] cont = 1;	//Contador
	reg [1:0] ff;											//Flip FLops entrada
	wor aux;													//Flip Flop saída
	
	assign aux = ff[1] ^ ff[0];	//Operação lógica
	
	always @(posedge clk) begin
	
		ff[1] = ff[0];					//ff[1] estado anterior
		ff[0] = button;				//ff[0] estado atual
		
		if(!aux) begin					//Se saída 0 (estável), if verdadeiro
			
			if(cont*2 >= overflow) begin	//Quando atinge overflow
				debounced = ff[1];			//Joga o valor na saída
				cont = 1;						//Reseta contador
			end
			else cont = cont + 1;			//Incrementar contador
			
		end
		else cont = 1;		//Manter contador resetado caso sinal não estável
	end
endmodule
