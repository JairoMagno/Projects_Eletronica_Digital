module seletor_de_buzzer
(
	input clock_in, buzzer_msc1, buzzer_msc2, buzzer_msc3, buzzer_msc4, //Código para jogar na saída apenas a música que estiver sendo executada
	input [1:0] selecao,
	output reg buzzer_placa	
);

always @(posedge clock_in) begin

	case(selecao)                           //De acordo com a selecao, o buzzer da placa irá receber a saída do bloco da musica 1, 2, 3 ou 4.
		2'b00 : buzzer_placa <= buzzer_msc1;
		2'b01 : buzzer_placa <= buzzer_msc2;
		2'b10 : buzzer_placa <= buzzer_msc3;
		2'b11 : buzzer_placa <= buzzer_msc4;
	endcase 
end
endmodule 