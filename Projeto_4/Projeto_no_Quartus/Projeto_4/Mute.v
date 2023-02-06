module Mute
(
	input mute, buzzer_placa,
	output buzzer_saida
);

	assign buzzer_saida = mute & buzzer_placa; //Saída só receberá o buzzer da entrada, quando mute for 1.
	
endmodule 