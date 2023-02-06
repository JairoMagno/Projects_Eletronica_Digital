module Temporizador 
(
	input Clk,
	input Disparo,
	input [27:0] Overflow,
	
	output Saida = 1'b0               //Contagem a ser feita. Está definido incialmente em 0.
);
	reg [27:0] contagem = 0;
	
	always @(posedge Clk)                //Sensível ao clock	
	
	begin
		if ((Disparo) && (contagem == 0)) begin  //Disparo não ativado. Seto minha contagem paro o overflow
		
			contagem <= Overflow;
		end	
		else if ((!Disparo) && (contagem == 0)) begin
	
			contagem <= 0;                           //Retém em 0. Disparo ativado
		end
		else contagem <= contagem - 1;         //Caso não seja uma das alternativas acima, a contagem irá apenas decrementar		
	end
	
	assign Saida = (contagem != 0) ? 1'b1 : 1'b0;
	
endmodule
