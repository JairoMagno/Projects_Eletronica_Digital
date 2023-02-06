module FrereJacques
(
	output Clk_out = 1'b0,
	output reg Disparo = 1'b0, 
	output reg [27:0] Temp_out,
	output reg [27:0] Freq_out,	
	input Clk_in, Duracao, stop_in, Play_in	
);
	
	//overflow para frequencias da Música Frere Jacque
   `define F3  71633  //Fá3
	`define G3  63775  //Sol3
   `define A3  56818  //Lá 3
   `define Bb3 53648  //Sib3
   `define C4  47801  //Dó4
   `define D4  42553  //Ré4
   `define G4  31289  //Sol4
   `define F4  35790  //Fá4
	
	//overflow para tempos
	`define ov_t4     (4 * 50000000) / (120/60)     //overflow 4 batidas
   `define ov_t2     (2 * 50000000) / (120/60)       //overflow 2 batidas
   `define ov_t1     50000000       / (120/60)       //overflow 1 batida
   `define ov_t1_2   (50000000 / 2) / (120/60) //overflow 1/2 batidas
   
	`define ov_t1_4	(25000000 / 4)   //overflow 1/4 batidas
   `define ov_t1_8	((25000000 * 4)/ 8)   //overflow 1/8 batidas
   `define ov_t1_16	((25000000 * 4)/ 16)  //overflow 1/16 batidas
	`define ov_Dot1	((25000000 *12) / 2)  //overflow nota pontuada
   `define ov_Dot2	((25000000 *12) / 4)  //overflow nota pontuada     
   `define ov_Dot4	((25000000 *12) / 8)  //overflow nota pontuada     
   `define ov_Dot8	((25000000 *12) / 16) //overflow nota pontuada     
	
	//FSM Declaração de estados 
	reg [5:0] estado, prox_estado;	
	localparam s0 = 6'd0;   //define estado 0
	localparam s1 = 6'd1;   //define estado 1
	localparam s2 = 6'd2;   //define estado 2
	localparam s3 = 6'd3;   //define estado 3
	localparam s4 = 6'd4;   //define estado 4
	localparam s5 = 6'd5;   //define estado 5
	localparam s6 = 6'd6;   //define estado 6
	localparam s7 = 6'd7;   //define estado 7
	localparam s8 = 6'd8;   //define estado 8
	localparam s9 = 6'd9;   //define estado 9
	localparam s10 = 6'd10;  //define estado 10
	localparam s11 = 6'd11;  //define estado 11
	localparam s12 = 6'd12;  //define estado 12
	localparam s13 = 6'd13;  //define estado 13
	localparam s14 = 6'd14;  //define estado 14
	localparam s15 = 6'd15;  //define estado 15
	localparam s16 = 6'd16;  //define estado 16
	localparam s17 = 6'd17;  //define estado 17
	localparam s18 = 6'd18;  //define estado 18
	localparam s19 = 6'd19;  //define estado 19
	localparam s20 = 6'd20;  //define estado 20
	localparam s21 = 6'd21;  //define estado 21
	localparam s22 = 6'd22;  //define estado 22
	localparam s23 = 6'd23;  //define estado 23
	localparam s24 = 6'd24;  //define estado 24
	localparam s25 = 6'd25;  //define estado 25
	localparam s26 = 6'd26;  //define estado 26
	localparam s27 = 6'd27;  //define estado 27
	localparam s28 = 6'd28;  //define estado 28
	localparam s29 = 6'd29;  //define estado 29
	localparam s30 = 6'd30;  //define estado 30
	localparam s31 = 6'd31;  //define estado 31
	localparam s32 = 6'd32;  //define estado 32
	
	//FSM Lógica para controle do estado atual
	always @ (posedge Clk_in)
	begin : L1
		estado <= prox_estado;
	end
	
	//FSM Lógica para controle do próximo estado
	always @ (*)//Combinacional 
	begin : L2
		case (estado)
			s0:  begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s0;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in ==1'b1) begin
							 prox_estado <= s1;
						 end
						 else begin 
							 prox_estado <= s0;
						 end
					  end
				  end	
			s1:  begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s0;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in ==1'b1) begin
							 prox_estado <= s2;
						 end
						 else begin 
							 prox_estado <= s1;
						 end
					  end
				  end
			s2:  begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s0;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s3;
						 end
						 else begin 
							 prox_estado <= s2;
						 end
					  end
				  end
			s3:  begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s0;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s4;
						 end
						 else begin 
							 prox_estado <= s3;
						 end
					  end
				  end	
			s4:  begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s0;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s5;
						 end
						 else begin 
							 prox_estado <= s4;
						 end
					  end
				  end
			s5:  begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s0;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s6;
						 end
						 else begin 
							 prox_estado <= s5;
						 end
					  end
				  end
			s6:  begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s0;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s7;
						 end
						 else begin 
							 prox_estado <= s6;
						 end
					  end
				  end	
			s7:  begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s0;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s8;
						 end
						 else begin 
							 prox_estado <= s7;
						 end
					  end
				  end
			s8:  begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s0;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s9;
						 end
						 else begin 
							 prox_estado <= s8;
						 end
					  end
				  end
			s9:  begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s0;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s10;
						 end
						 else begin 
							 prox_estado <= s9;
						 end
					  end
				  end	
			s10: begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s0;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s11;
						 end
						 else begin 
							 prox_estado <= s10;
						 end
					  end
				  end
			s11: begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s0;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s12;
						 end
						 else begin 
							 prox_estado <= s11;
						 end
					  end
				  end
			s12: begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s0;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s13;
						 end
						 else begin 
							 prox_estado <= s12;
						 end
					  end
				  end	
			s13: begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s0;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s14;
						 end
						 else begin 
							 prox_estado <= s13;
						 end
					  end
				  end
			s14: begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s0;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s15;
						 end
						 else begin 
							 prox_estado <= s14;
						 end
					  end
				  end
			s15: begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s0;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s16;
						 end
						 else begin 
							 prox_estado <= s15;
						 end
					  end
				  end	
			s16: begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s0;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s17;
						 end
						 else begin 
							 prox_estado <= s16;
						 end
					  end
				  end
			s17: begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s0;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s18;
						 end
						 else begin 
							 prox_estado <= s17;
						 end
					  end
				  end
			s18: begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s0;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s19;
						 end
						 else begin 
							 prox_estado <= s18;
						 end
					  end
				  end	
			s19: begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s0;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s20;
						 end
						 else begin 
							 prox_estado <= s19;
						 end
					  end
				  end
			s20: begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s0;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s21;
						 end
						 else begin 
							 prox_estado <= s20;
						 end
					  end
				  end
			s21: begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s0;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s22;
						 end
						 else begin 
							 prox_estado <= s21;
						 end
					  end
				  end	
			s22: begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s0;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s23;
						 end
						 else begin 
							 prox_estado <= s22;
						 end
					  end
				  end
			s23: begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s0;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s24;
						 end
						 else begin 
							 prox_estado <= s23;
						 end
					  end
				  end
			s24: begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s0;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s25;
						 end
						 else begin 
							 prox_estado <= s24;
						 end
					  end
				  end	
			s25: begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s0;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s26;
						 end
						 else begin 
							 prox_estado <= s25;
						 end
					  end
				  end
			s26: begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s0;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s27;
						 end
						 else begin 
							 prox_estado <= s26;
						 end
					  end
				  end
			s27: begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s0;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s28;
						 end
						 else begin 
							 prox_estado <= s27;
						 end
					  end
				  end
			s28: begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s0;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s29;
						 end
						 else begin 
							 prox_estado <= s28;
						 end
					  end
				  end
			s29: begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s0;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s30;
						 end
						 else begin 
							 prox_estado <= s29;
						 end
					  end
				  end
			s30: begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s0;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s31;
						 end
						 else begin 
							 prox_estado <= s30;
						 end
					  end
				  end
			s31: begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s0;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s32;
						 end
						 else begin 
							 prox_estado <= s31;
						 end
					  end
				  end
			s32: begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s0;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s0;
						 end
						 else begin 
							 prox_estado <= s32;
						 end
					  end
				  end
			default: prox_estado <= s0; //recupera de estado inválido
		endcase
	end	
	
	//FSM Lógica para controle das saídas
	always @ (estado)//Combinacional 
	begin : L3
		case (estado) //s0 apenas inicia a prox nota	
			s0:  nota(0,`ov_t1);       //freq atual, dur prox. Nota silenciosa. Apenas manda um impulso, estouro de contagem.
         s1:  nota(`F3,`ov_t1);    
         s2:  nota(`G3,`ov_t1);     	
			s3:  nota(`A3,`ov_t1);     
         s4:  nota(`F3,`ov_t1);     
			s5:  nota(`F3,`ov_t1);     
         s6:  nota(`G3,`ov_t1);     
			s7:  nota(`A3,`ov_t1);     
         s8:  nota(`F3,`ov_t1);     
			s9:  nota(`A3,`ov_t1);     
         s10: nota(`Bb3,`ov_t1);    
			s11: nota(`C4,`ov_t2);     
         s12: nota(`A3,`ov_t1);     
			s13: nota(`Bb3,`ov_t1);    
         s14: nota(`C4,`ov_t2);     
			s15: nota(`C4,`ov_t1_2);   
         s16: nota(`D4,`ov_t1_2);   
			s17: nota(`C4,`ov_t1_2);   
			s18: nota(`Bb3,`ov_t1_2);  
         s19: nota(`A3,`ov_t1);     
			s20: nota(`F3,`ov_t1);     
         s21: nota(`C4,`ov_t1_2);   
			s22: nota(`D4,`ov_t1_2);   
         s23: nota(`C4,`ov_t1_2);   
			s24: nota(`Bb3,`ov_t1_2);  
			s25: nota(`A3,`ov_t1);     
			s26: nota(`F3,`ov_t1);     
         s27: nota(`G3,`ov_t1);     
			s28: nota(`C4,`ov_t1);     
         s29: nota(`F4,`ov_t2);     
			s30: nota(`G4,`ov_t1);     
         s31: nota(`C4,`ov_t1);    
			s32: nota(`F4,`ov_t2);    		
		endcase
	end
	
	//Atribuição contínua
	assign Clk_out = Duracao & Clk_in;	
	
	//Tarefa para atribuição de saídas nos estados
	task nota( input [27:0] ov_f, ov_t);
	begin
		Temp_out = ov_t; //define a duração	proxima nota			
		Freq_out = ov_f; //define a frequência nota atual
		Disparo = 1'b1;  //dispara o temp a próxima nota		
	end
	endtask
	
endmodule		
		