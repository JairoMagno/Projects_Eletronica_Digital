module HarryPotter
(
	output Clk_out = 1'b0,
	output reg Disparo = 1'b0, 
	output reg [27:0] Temp_out,
	output reg [27:0] Freq_out,	
	input Clk_in, Duracao, stop_in, Play_in	
);

   // Overflow para frequencias (50MHz)
	`define B4   101214  //494
	`define D4   170068  //294
	`define E5   75872   //659
	`define FS4  135135  //370
	`define GS4  120481  //415
   `define A4   113636  //440
	`define C4   190839  //262
	`define CS4  180505  //277
	`define F4   143266  //349
	`define G4   127551  //392
	`define AS4  107296  //466
	`define C5   95602   //523
	`define CS5  90252   //554
	`define D5   85178   //587
	`define DS5  80385   //622
	`define F5   71633   //698
	`define FS5  67567   //740
	`define G5   63775   //784
	`define GS5  60168   //831
	`define A5   56818   //880
	`define AS5  53648   //932
	`define C6   47755   //1047
	`define CS6  45085   //1109
		
	//Overflow para os tempos	
   `define ov_t4     (4 * 50000000) /(150/60)      //overflow 4 batidas
   `define ov_t2     (2 * 50000000) /(150/60)      //overflow 2 batidas
   `define ov_t1     50000000       /(150/60)      //overflow 1 batida
   `define ov_t1_2   ((50000000 * 4)/ 2) /(150/60) //overflow 1/2 batidas
   `define ov_t1_4	((50000000 * 4)/ 4) /(150/60) //overflow 1/4 batidas
   `define ov_t1_8	((50000000 * 4)/ 8) /(150/60)  //overflow 1/8 batidas
   `define ov_t1_16	((50000000 * 4)/ 16) /(150/60) //overflow 1/16 batidas
   `define ov_Dot1	((50000000 *12) / 2)  /(150/60)//overflow nota pontuada
   `define ov_Dot2	((50000000 *12) / 4)  /(150/60)//overflow nota pontuada     
   `define ov_Dot4	((50000000 *12) / 8)  /(150/60)//overflow nota pontuada     
   `define ov_Dot8	((50000000 *12) / 16) /(150/60)//overflow nota pontuada 
	
	
	//FSM Declaração de estados 
	reg [6:0] estado, prox_estado;	
	localparam s1  = 6'd1;   
	localparam s2  = 6'd2;   
	localparam s3  = 6'd3;   
	localparam s4  = 6'd4;   
	localparam s5  = 6'd5;   
	localparam s6  = 6'd6;   
	localparam s7  = 6'd7;   
	localparam s8  = 6'd8;   
	localparam s9  = 6'd9;   
	localparam s10 = 6'd10;  
	localparam s11 = 6'd11;  
	localparam s12 = 6'd12; 
	localparam s13 = 6'd13;  
	localparam s14 = 6'd14;  
	localparam s15 = 6'd15;  
	localparam s16 = 6'd16;  
	localparam s17 = 6'd17;  
	localparam s18 = 6'd18;  
	localparam s19 = 6'd19;  
	localparam s20 = 6'd20;  
	localparam s21 = 6'd21;  
	localparam s22 = 6'd22;  
	localparam s23 = 6'd23; 
	localparam s24 = 6'd24; 
	localparam s25 = 6'd25;  
	localparam s26 = 6'd26;  
	localparam s27 = 6'd27; 
	localparam s28 = 6'd28; 
	localparam s29 = 6'd29;  
	localparam s30 = 6'd30;  
	localparam s31 = 6'd31;  
	localparam s32 = 6'd32;
	localparam s33 = 6'd33;   
	localparam s34 = 6'd34;   
	localparam s35 = 6'd35;   
	localparam s36 = 6'd36;   
	localparam s37 = 6'd37;   
	localparam s38 = 6'd38;   
	localparam s39 = 6'd39;   
	localparam s40 = 6'd40;   
	localparam s41 = 6'd41;   
	localparam s42 = 6'd42;   
	localparam s43 = 6'd43;  
	localparam s44 = 6'd44;  
	localparam s45 = 6'd45; 
	localparam s46 = 6'd46;  
	localparam s47 = 6'd47;  
	localparam s48 = 6'd48;  
	localparam s49 = 6'd49;  
	localparam s50 = 6'd50;  
	localparam s51 = 6'd51;  
	localparam s52 = 6'd52;  
	localparam s53 = 6'd53;  
	localparam s54 = 6'd54;  
	localparam s55 = 6'd55;  
	localparam s56 = 6'd56; 
	localparam s57 = 6'd57; 
	localparam s58 = 6'd58;  
	localparam s59 = 6'd59;  
	localparam s60 = 6'd60; 
	localparam s61 = 6'd61; 
	localparam s62 = 6'd62;  
	 
	
	//FSM Lógica para controle do estado atual
	always @ (posedge Clk_in)
	begin : L1
		estado <= prox_estado;
	end
	
	//FSM Lógica para controle do próximo estado
	always @ (*)//Combinacional 
	begin : L2
		case (estado)
			s1:  begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s1;
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
							 prox_estado <= s1;
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
							 prox_estado <= s1;
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
							 prox_estado <= s1;
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
							 prox_estado <= s1;
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
							 prox_estado <= s1;
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
							 prox_estado <= s1;
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
							 prox_estado <= s1;
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
							 prox_estado <= s1;
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
							 prox_estado <= s1;
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
							 prox_estado <= s1;
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
							 prox_estado <= s1;
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
							 prox_estado <= s1;
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
							 prox_estado <= s1;
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
							 prox_estado <= s1;
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
							 prox_estado <= s1;
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
							 prox_estado <= s1;
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
							 prox_estado <= s1;
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
							 prox_estado <= s1;
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
							 prox_estado <= s1;
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
							 prox_estado <= s1;
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
							 prox_estado <= s1;
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
							 prox_estado <= s1;
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
							 prox_estado <= s1;
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
							 prox_estado <= s1;
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
							 prox_estado <= s1;
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
							 prox_estado <= s1;
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
							 prox_estado <= s1;
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
							 prox_estado <= s1;
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
							 prox_estado <= s1;
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
							 prox_estado <= s1;
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
							 prox_estado <= s1;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s33;
						 end
						 else begin 
							 prox_estado <= s32;
						 end
					  end
				  end
			s33: begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s1;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s34;
						 end
						 else begin 
							 prox_estado <= s33;
						 end
					  end
				  end	
			s34: begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s1;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s35;
						 end
						 else begin 
							 prox_estado <= s34;
						 end
					  end
				  end
			s35: begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s1;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s36;
						 end
						 else begin 
							 prox_estado <= s35;
						 end
					  end
				  end
			s36: begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s1;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s37;
						 end
						 else begin 
							 prox_estado <= s36;
						 end
					  end
				  end	
			s37: begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s1;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s38;
						 end
						 else begin 
							 prox_estado <= s37;
						 end
					  end
				  end
			s38: begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s1;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s39;
						 end
						 else begin 
							 prox_estado <= s38;
						 end
					  end
				  end
			s39: begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s1;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s40;
						 end
						 else begin 
							 prox_estado <= s39;
						 end
					  end
				  end	
			s40: begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s1;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s41;
						 end
						 else begin 
							 prox_estado <= s40;
						 end
					  end
				  end
			s41: begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s1;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s42;
						 end
						 else begin 
							 prox_estado <= s41;
						 end
					  end
				  end
			s42: begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s1;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s43;
						 end
						 else begin 
							 prox_estado <= s42;
						 end
					  end
				  end	
			s43: begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s1;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s44;
						 end
						 else begin 
							 prox_estado <= s43;
						 end
					  end
				  end
			s44: begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s1;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s45;
						 end
						 else begin 
							 prox_estado <= s44;
						 end
					  end
				  end
			s45: begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s1;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s46;
						 end
						 else begin 
							 prox_estado <= s45;
						 end
					  end
				  end	
			s46: begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s1;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s47;
						 end
						 else begin 
							 prox_estado <= s46;
						 end
					  end
				  end
			s47: begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s1;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s48;
						 end
						 else begin 
							 prox_estado <= s47;
						 end
					  end
				  end
			s48: begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s1;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s49;
						 end
						 else begin 
							 prox_estado <= s48;
						 end
					  end
				  end
			s49: begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s1;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s50;
						 end
						 else begin 
							 prox_estado <= s49;
						 end
					  end
				  end
			s50: begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s1;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s51;
						 end
						 else begin 
							 prox_estado <= s50;
						 end
					  end
				  end
			s51: begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s1;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s52;
						 end
						 else begin 
							 prox_estado <= s51;
						 end
					  end
				  end	
			s52: begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s1;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s53;
						 end
						 else begin 
							 prox_estado <= s52;
						 end
					  end
				  end
			s53: begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s1;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s54;
						 end
						 else begin 
							 prox_estado <= s53;
						 end
					  end
				  end
			s54: begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s1;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s55;
						 end
						 else begin 
							 prox_estado <= s54;
						 end
					  end
				  end
			s55: begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s1;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s56;
						 end
						 else begin 
							 prox_estado <= s55;
						 end
					  end
				  end
			s56: begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s1;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s57;
						 end
						 else begin 
							 prox_estado <= s56;
						 end
					  end
				  end
			s57: begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s1;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s58;
						 end
						 else begin 
							 prox_estado <= s57;
						 end
					  end
				  end	
			s58: begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s1;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s59;
						 end
						 else begin 
							 prox_estado <= s58;
						 end
					  end
				  end
			s59: begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s1;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s60;
						 end
						 else begin 
							 prox_estado <= s59;
						 end
					  end
				  end
			s60: begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s1;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s61;
						 end
						 else begin 
							 prox_estado <= s60;
						 end
					  end
				  end
			s61: begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s1;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s62;
						 end
						 else begin 
							 prox_estado <= s61;
						 end
					  end
				  end
			s62: begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s1;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s1;
						 end
						 else begin 
							 prox_estado <= s62;
						 end
					  end
				  end
			default: prox_estado <= s1; //recupera de estado inválido
		endcase
	end	
	
	//FSM Lógica para controle das saídas
	always @ (estado)//Combinacional 
	begin : L3
		case (estado) //s0 apenas inicia a prox nota	
			s1   :nota(0, `ov_t1_4);  //s0 apenas inicia a prox nota. Emite um pulso, estouro de contagem
			s2   :nota(`D4, `ov_Dot4);
			s3   :nota(`G4, `ov_t1_8);
			s4   :nota(`AS4, `ov_t1_4);
			s5   :nota(`A4, `ov_t1_2);
			s6   :nota(`G4, `ov_t1_4);
			s7   :nota(`D5, `ov_Dot2);
			s8   :nota(`C5, `ov_Dot2);
			s9   :nota(`A4, `ov_Dot4);
			s10  :nota(`G4, `ov_t1_8);
			s11  :nota(`AS4, `ov_t1_4);
			s12  :nota(`A4, `ov_t1_2);
			s13  :nota(`F4, `ov_t1_4);
			s14  :nota(`GS4, `ov_Dot1);
			s15  :nota(`D4, `ov_t1_4);
			s16  :nota(`D4, `ov_Dot4);
			s17  :nota(`G4, `ov_t1_8);
			s18  :nota(`AS4, `ov_t1_4);
			s19  :nota(`A4, `ov_t1_2);
			s20  :nota(`G4, `ov_t1_4);
			s21  :nota(`D5, `ov_t1_2);
			s22  :nota(`F5, `ov_t1_4);
			s23  :nota(`E5, `ov_t1_2);
			s24  :nota(`DS5, `ov_t1_4);
			s25  :nota(`B4, `ov_Dot4); 
			s26  :nota(`DS5, `ov_t1_8);
			s27  :nota(`D5, `ov_t1_4);
			s28  :nota(`CS5, `ov_t1_2);
			s29  :nota(`CS4, `ov_t1_4);
			s30  :nota(`B4, `ov_Dot1);
			s31  :nota(`G4, `ov_t1_4);
			s32  :nota(`AS4, `ov_t1_2);
			s33  :nota(`D5, `ov_t1_4);
			s34  :nota(`AS4, `ov_t1_2);
			s35  :nota(`D5, `ov_t1_4);
			s36  :nota(`AS4, `ov_t1_2);
			s37  :nota(`DS5, `ov_t1_4);
			s38  :nota(`D5, `ov_t1_2);
			s39  :nota(`CS5, `ov_t1_4);
			s40  :nota(`A4, `ov_Dot4);
			s41  :nota(`AS4, `ov_t1_8);
			s42  :nota(`D5, `ov_t1_4);
			s43  :nota(`CS5, `ov_t1_2);
			s44  :nota(`CS4, `ov_t1_4);
			s45  :nota(`D4, `ov_Dot1);
			s46  :nota(`D5, `ov_t1_4);
			s47  :nota(0, `ov_t1_4);
			s48  :nota(`AS4, `ov_t1_2);
			s49  :nota(`D5, `ov_t1_4); 
			s50  :nota(`AS4, `ov_t1_2);
			s51  :nota(`D5, `ov_t1_4);
			s52  :nota(`AS4, `ov_t1_2);
			s53  :nota(`F5, `ov_t1_4);
			s54  :nota(`E5, `ov_t1_2);
			s55  :nota(`DS5, `ov_t1_4);
			s56  :nota(`B4, `ov_Dot4);
			s57  :nota(`DS5, `ov_t1_8);
			s58  :nota(`D5, `ov_t1_4);
			s59  :nota(`CS5, `ov_t1_2);
			s60  :nota(`CS4, `ov_t1_4);
			s61  :nota(`AS4, `ov_Dot1);
			s62  :nota(`G4, `ov_t1_2);    		
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