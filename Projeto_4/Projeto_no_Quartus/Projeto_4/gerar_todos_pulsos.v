module gerar_todos_pulsos
(
	input clock_in,
	
	input play_local, selecao_local, stop_local,
	input mute_remoto, play_remoto, selecao_remoto, stop_remoto,
	
	output play_pulso_L, selecao_pulso_L, stop_pulso_L,
	output mute_pulso_R, play_pulso_R, selecao_pulso_R, stop_pulso_R
);

//---------------Pulsos Locais---------------//

	gera_pulso Pulso_Play_Local(
		.clk(clock_in),
		.button(play_local),
		.pulso(play_pulso_L)
	);
	
	gera_pulso Pulso_Selecao_Local(
		.clk(clock_in),
		.button(selecao_local),
		.pulso(selecao_pulso_L)
	);
	
	gera_pulso Pulso_Stop_Local(
		.clk(clock_in),
		.button(stop_local),
		.pulso(stop_pulso_L)
	);
	
//--------------Pulsos Remotos---------------//
	
	gera_pulso Pulso_Mute_Remoto(
		.clk(clock_in),
		.button(mute_remoto),
		.pulso(mute_pulso_R)
	);
	
	gera_pulso Pulso_Play_Remoto(
		.clk(clock_in),
		.button(play_remoto),
		.pulso(play_pulso_R)
	);
	
	gera_pulso Pulso_Selecao_Remoto(
		.clk(clock_in),
		.button(selecao_remoto),
		.pulso(selecao_pulso_R)
	);
	
	gera_pulso Pulso_Stop_Remoto(
		.clk(clock_in),
		.button(stop_remoto),
		.pulso(stop_pulso_R)
	);

endmodule
		