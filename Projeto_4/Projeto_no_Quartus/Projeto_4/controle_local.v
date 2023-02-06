module controle_local

(
	input clk_placa,
	input stop_in, play_in, sel_in, //botoes da placa
	input	stop_ir, play_ir, sel_ir, //botoes controle remoto
	
	output reg stop_out = 1'b1, play_out = 1'b0,
	output reg [1:0] sel_out
);

	//Sinais de pulso
	wire stop_pulso, play_pulso, sel_pulso;
	wire stop_ir_pulso, play_ir_pulso, sel_ir_pulso;
	
	//Contador vai ignorar o transitório da placa.
	reg[7:0] cont;                        
	
	//Pulso do STOP
	gera_pulso Pulso_STOP(
		.clk(clk_placa),
		.button(stop_in),
		.pulso(stop_pulso)
	);
	
	//Pulso do PLAY
	gera_pulso Pulso_PLAY(
		.clk(clk_placa),
		.button(play_in),
		.pulso(play_pulso)
	);
	
	//Pulso da Seleção
	gera_pulso Pulso_SELE(
		.clk(clk_placa),
		.button(sel_in),
		.pulso(sel_pulso)
	);
	
	//Gera pulsos do sinais do controle remoto
	gera_pulso Pulso_ir_STOP(
		.clk(clk_placa),
		.button(stop_ir),
		.pulso(stop_ir_pulso)
	);
	
	gera_pulso Pulso_ir_PLAY(
		.clk(clk_placa),
		.button(play_ir),
		.pulso(play_ir_pulso)
	);
	
	gera_pulso Pulso_ir_SELE(
		.clk(clk_placa),
		.button(sel_ir),
		.pulso(sel_ir_pulso)
	);
	
	//Declaração dos Estados
	reg [1:0] estado = 2'b00;
	localparam STOP = 2'b00;
	localparam PLAY = 2'b01;
	localparam PAUSE = 2'b10;
	
	//Declaração de valores iniciais
	//Inicia em STOP e com musica sem executar
	initial begin
		stop_out = 1'b1;
		play_out = 1'b0;
		sel_out  = 2'b00;
		cont     = 8'd0;
		estado   = STOP;
	end
	
	//Lógica Principal
	always @(posedge clk_placa) begin
	
		//Checa o estado depois de 255 ciclos de clock.
		if(cont >= 8'd255) begin       
		
			case(estado)
			
				//Estado de STOP
				STOP: begin
					
					//Lógica de troca de estados
					if(play_pulso || play_ir_pulso) begin
						estado = PLAY;
					end
					else if(sel_pulso || sel_ir_pulso) begin
							
						if(sel_out == 2'b00) begin
							sel_out = 2'b01;
						end
						else if(sel_out == 2'b01) begin
							sel_out = 2'b10;
						end
						else if(sel_out == 2'b10) begin
							sel_out = 2'b11;
						end
						else if(sel_out == 2'b11) begin
							sel_out = 2'b00;
						end
						
					end
					else begin
						estado = STOP;
					end
				end
				
				//Estado de PLAY
				PLAY: begin
				
					//Lógica do estado
				
					//Lógica de troca de estados
					if(stop_pulso || stop_ir_pulso) begin
						estado = STOP;
					end
					else if(play_pulso || play_ir_pulso) begin
						estado = PAUSE;
					end
					else begin
						estado = PLAY;
					end
					
				end
				
				//Estado de PAUSE
				PAUSE: begin
					
					//Lógica de troca de estados
					if(stop_pulso || stop_ir_pulso) begin
						estado = STOP;
					end
					else if(play_pulso || play_ir_pulso) begin
						estado = PLAY;
					end
					else begin
						estado = PAUSE;
					end
					
				end
				
				default: begin
					estado = STOP;
				end
				
			endcase
			
			case(estado)
			
				STOP: begin
					//Lógica do estado
					stop_out = 1'b1;
					play_out = 1'b0;
				end
				
				PLAY: begin
					//Lógica do estado
					stop_out = 1'b0;
					play_out = 1'b1;
				end
				
				PAUSE: begin
					//Lógica do estado
					stop_out = 1'b0;
					play_out = 1'b0;
				end
				
				default: begin
					//Lógica do estado
					stop_out = 1'b1;
					play_out = 1'b0;
				end
				
			endcase
		end 
		else cont = cont + 8'd1;
		
	end
endmodule
