module seletor_de_musica
(
	input clock_in,
	input [1:0] selecao,
	
	output clock_mus1, clock_mus2, clock_mus3, clock_mus4
		
);

reg AUX1, AUX2, AUX3, AUX4;

always @(posedge clock_in) begin

	case(selecao)                       //Selecao alternada pelo botao
		2'b00 : begin                    //Música 1 selecionada, libera clock para o bloco 1 e o outro não
					AUX4 = 1'b0;
					AUX3 = 1'b0;
					AUX2 = 1'b0;
					AUX1 = 1'b1;
				  end 
		2'b01 : begin                    //Música 2 selecionada, libera clock para o bloco 2 e o outro não
					AUX4 = 1'b0;
					AUX3 = 1'b0;
					AUX1 = 1'b0;
					AUX2 = 1'b1;
				  end
		2'b10 : begin                    //Música 3 selecionada, libera clock para o bloco 3 e o outro não
					AUX4 = 1'b0;
					AUX2 = 1'b0;
					AUX1 = 1'b0;
					AUX3 = 1'b1;
				  end 
		2'b11 : begin                    //Música 4 selecionada, libera clock para o bloco 4 e o outro não
					AUX3 = 1'b0;
					AUX2 = 1'b0;
					AUX1 = 1'b0;
					AUX4 = 1'b1;
				  end  
	endcase                             //Como foram mapeados todos os posíveis casos, não será necessário o uso do "Default".
	
end

	assign clock_mus1 = AUX1 & clock_in;
	assign clock_mus2 = AUX2 & clock_in;
	assign clock_mus3 = AUX3 & clock_in;
	assign clock_mus4 = AUX4 & clock_in;

endmodule 