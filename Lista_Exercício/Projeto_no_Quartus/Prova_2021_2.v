module Prova_2021_2
(
	input [15:0]A, 
	input [15:0]B,
	output Saida
);
	
	wire [15:0]G1;
	wire WireNor0;
	genvar i;
	
	generate
		for(i = 0 ; i < 16 ; i = i + 1) begin : L1
			 if(i == 0) begin
			 
				assign G1[i] = ~(A[i] && B[i]); //NAND
			 end
			 
			 else if(i%2==1 && i!=0 && i!=15) begin
			  
				assign G1[i] = ~(A[i] ^^ B[i]); //XNOR
			 end
			 
			 else if(i%2==0 && i!=0 && i!=15) begin
			  
				assign G1[i] = (A[i] ^^ B[i]); //XOR
			 end
			 
			 else if(i == 15) begin
				
				assign G1[i] = ~(A[i] || B[i]); //NOR
			 end
		end 
	endgenerate 
	
	assign WireNor0  = |G1;
	assign Saida = ~WireNor0;

endmodule 
