module FSM_Principal
(
	input clk_placa,
	
	input mute_loc, play_loc, sel_loc, stop_loc, //botoes da placa
	input	mute_rem, play_rem, sel_rem, stop_rem,//botoes controle remoto
	
	output mute_out = 1'b1,
	output reg play_out = 1'b0,
	output reg [1:0] sel_out,
	output reg stop_out = 1'b1
);

	//Contador vai ignorar o transitório da placa.
	reg[7:0] cont;
	
	//Registrador do mute local e remoto
	reg reg_mute_remoto;
	
	//Declaração dos Estados
	reg [1:0] estado = 2'b00;
	localparam STOP = 2'b00;
	localparam PLAY = 2'b01;
	localparam PAUSE = 2'b10;
	
	//Declaração de valores iniciais
	initial begin
		stop_out = 1'b1;
		play_out = 1'b0;
		sel_out  = 2'b00;
		cont     = 8'd0;
		reg_mute_remoto = 1'b1;
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
					if(play_loc || play_rem) begin
						estado = PLAY;
					end
					else if(sel_loc || sel_rem) begin
							
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
					if(stop_loc || stop_rem) begin
						estado = STOP;
					end
					else if(play_loc || play_rem) begin
						estado = PAUSE;
					end
					else begin
						estado = PLAY;
					end
					
				end
				
				//Estado de PAUSE
				PAUSE: begin
					
					//Lógica de troca de estados
					if(stop_loc || stop_rem) begin
						estado = STOP;
					end
					else if(play_loc || play_rem) begin
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
	
	//Lógica do MUTE, fora da FSM
	always @(posedge clk_placa) begin
	
		//Se apertar o botao no controle, inverte o valor de registrador
		if(mute_rem) begin
			reg_mute_remoto = ~reg_mute_remoto;
		end
	
	end
	
	//Se mute ativo pelo controle OU local, mute out ativo
	assign mute_out = reg_mute_remoto && mute_loc;
	
endmodule
		