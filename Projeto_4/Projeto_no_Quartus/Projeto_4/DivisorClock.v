module DivisorClock 
(
	input Clk_in,              //Frequencia de entrada.
	input [32:0] Overflow,
	output reg Clk_out        //Frequencia de saída.
);
	reg [32:0] cnt = 0;        //Contador que vai de 0 até o overflow.
	
	always @(posedge Clk_in)	 
	begin
	
		if (2*cnt < Overflow) begin
		
			cnt <= cnt + 1;		//Contador continua incrementando enquanto não chego no overflow.
		end
		
		else begin
		
			cnt <= 0;            //Reinicia o contador. Ele recebe 0, pois conta de 0 até overflow.
			Clk_out <= !Clk_out; //Troca de estado
		end
	end
endmodule
