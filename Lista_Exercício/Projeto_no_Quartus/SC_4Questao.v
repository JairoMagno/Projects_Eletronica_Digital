module SC_4Questao

(
	input [1:0] A,
	input B,
	output saida
);

wire WideNor0;
wire [15:0] x;
genvar i;

generate

	for(i=0; i<16; i=i+1) begin : G1
	
		if(i==0) begin
		
			assign x[i] = ~(A[i] && A[i+1]);
		end
		
		else if(i<15) begin
			
			if(i%2 == 1) begin
			
				assign x[i] = ~(x[i-1] ^^ B);
			end
			
			if(i%2 == 0) begin
			
				assign x[i] = (x[i-1] ^^ B);
			end
			
		end
		
		else begin
		
			assign x[i] = ~(x[i-1] || B);
		end		
	end
endgenerate

assign WideNor0 = |x;
assign saida = ~WideNor0;

endmodule 