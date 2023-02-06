module questao9
(
	input [3:1]A, 
	input [3:1]B,
	output Saida
);
	
	wire [3:1]B1;
	genvar i;
	
	generate
		for(i = 1 ; i < 4 ; i = i + 1) begin : L1
			 if(i == 1) begin
			 
				assign B1[i] = (A[i] || B[i]); //OR
			 end
			 
			 else if(i == 2) begin
			  
				assign B1[i] = ~(A[i] && B[i]); //NAND
			 end
			 
			 else if(i == 3) begin
			  
				assign B1[i] = ~(A[i] || B[i]); //NOR
			 end
		end 
	endgenerate 
	
	assign Saida = &WireAnd0;

endmodule 
