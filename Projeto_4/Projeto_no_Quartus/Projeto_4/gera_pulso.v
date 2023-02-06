module gera_pulso

(
	input clk,			//Clock Placa
	input button,		//Botao de entrada
	output pulso		//Pulso de saída
);

	reg ff1, ff2;			//Flip Flops

	always @(posedge clk) begin
		ff2 = ff1;
		ff1 = ~button;
	end
	
	assign pulso = ~(~ff1 | ff2);	//Pulso
	
endmodule
