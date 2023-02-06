module ZeldaLullaby
(
	output Clk_out = 1'b0,
	output reg Disparo = 1'b0, 
	output reg [27:0] Temp_out,
	output reg [27:0] Freq_out,	
	input Clk_in, Duracao, stop_in, Play_in	
);
	
   // Overflow para frequencias (50MHz)
	 `define B0  1612904
    `define C1  1515151 
    `define CS1 1428571
    `define D1  1351351
    `define DS1 1282051
    `define E1  1219512
    `define F1  1136363                                        
    `define FS1 1086956                                         
    `define G1  1020408                                        
    `define GS1 961538                                        
    `define A1  909090                                       
    `define AS1 862068                                      
    `define B1  806451                                       
    `define C2  757575                                       
    `define CS2 714285                                        
    `define D2  675675                                       
    `define DS2 641025                                        
    `define E2  609756                                       
    `define F2  568181                                       
    `define FS2 543478                                        
    `define G2  510204                                       
    `define GS2 480769                                        
    `define A2  454545                                       
    `define AS2 431034                                        
    `define B2  403225                                       
    `define C3  378787                                       
    `define CS3 357142                                        
    `define D3  337837                                       
    `define DS3 320512                                        
    `define E3  304878                                       
    `define F3  284090                                       
    `define FS3 271739                                        
    `define G3  255102                                       
    `define GS3 240384                                        
    `define A3  227272                                       
    `define AS3 215517                                        
    `define B3  201612                                       
    `define C4  189393                                       
    `define CS4 178571                                        
    `define D4  168918                                       
    `define DS4 160256                                        
    `define E4  152439                                       
    `define F4  142045                                       
    `define FS4 135869                                        
    `define G4  127551                                       
    `define GS4 120192                                        
    `define A4  113636                                       
    `define AS4 107758                                        
    `define B4  100806                                       
    `define C5  94696                                      
    `define CS5 89285                                        
    `define D5  84459                                       
    `define DS5 80128                                        
    `define E5  76219                                       
    `define F5  71022                                       
    `define FS5 67934                                        
    `define G5  63775                                       
    `define GS5 60096                                        
    `define A5  56818                                       
    `define AS5 53879                                        
    `define B5  50403                                       
    `define C6  47348                                       
    `define CS6 44642                                        
    `define D6  42229                                       
    `define DS6 40064                                        
    `define E6  38109                                       
    `define F6  35511                                       
    `define FS6 33967                                        
    `define G6  31887                                       
    `define GS6 30048                                        
    `define A6  28409                                       
    `define AS6 26939                                        
    `define B6  25201                                       
    `define C7  23674                                       
    `define CS7 22321                                        
    `define D7  21114                                       
    `define DS7 20032                                        
    `define E7  19054                                       
    `define F7  17755                                       
    `define FS7 16983                                        
    `define G7  15943                                       
    `define GS7 15024                                        
    `define A7  14204                                       
    `define AS7 13469                                        
    `define B7  12600                                       
    `define C8  11837                                       
    `define CS8 11160                                        
    `define D8  10557                                       
    `define DS8 10016
	 
   //Overflow para tempos
   `define ov_t4     (4 * 50000000) / (150/60)     //overflow 4 batidas
   `define ov_t2     (2 * 50000000) / (150/60)      //overflow 2 batidas
   `define ov_t1     50000000       / (150/60)     //overflow 1 batida
   `define ov_t1_2   (50000000/ 2) / (150/60)   //overflow 1/2 batidas
   `define ov_t1_4	(50000000/ 4) / (150/60) //overflow 1/4 batidas
   `define ov_t1_8	((50000000 * 4)/ 8) / (150/60) //overflow 1/8 batidas
   `define ov_t1_16	((50000000 * 4)/ 16)/ (150/60) //overflow 1/16 batidas
   `define ov_Dot1	((50000000 *12) / 2)/ (150/60) //overflow nota pontuada
   `define ov_Dot2	((50000000 *12) / 4)/ (150/60) //overflow nota pontuada     
   `define ov_Dot4	((50000000 *12) / 8)/ (150/60) //overflow nota pontuada     
   `define ov_Dot8	((50000000 *12) / 16)/(150/60)//overflow nota pontuada  
	
	
	//FSM Declaração de estados 
	reg [6:0] estado, prox_estado;	
	localparam s0  = 6'd0;   
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
							 prox_estado <= s33;
						 end
						 else begin 
							 prox_estado <= s32;
						 end
					  end
				  end
			s33: begin
					  if(stop_in == 1'b1) begin 
							 prox_estado <= s0;
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
							 prox_estado <= s0;
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
							 prox_estado <= s0;
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
							 prox_estado <= s0;
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
							 prox_estado <= s0;
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
							 prox_estado <= s0;
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
							 prox_estado <= s0;
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
							 prox_estado <= s0;
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
							 prox_estado <= s0;
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
							 prox_estado <= s0;
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
							 prox_estado <= s0;
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
							 prox_estado <= s0;
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
							 prox_estado <= s0;
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
							 prox_estado <= s0;
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
							 prox_estado <= s0;
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
							 prox_estado <= s0;
					  end
					  else begin
						 if(Duracao == 1'b0 & Play_in == 1'b1) begin
							 prox_estado <= s1;
						 end
						 else begin 
							 prox_estado <= s48;
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
		  s0  : nota(0,   `ov_t2); //s0 apenas inicia a prox nota. Emite um pulso, estouro de contagem.
        s1  : nota(`E6,  `ov_t1);
        s2  : nota(`G6,  `ov_t2);
        s3  : nota(`D6,  `ov_t1_2);
        s4  : nota(`C6,  `ov_t1_2);
        s5  : nota(`D6,  `ov_t2);
        s6  : nota(`E6,  `ov_t1);
        s7  : nota(`G6,  `ov_t2+`ov_t1_2);
        s8  : nota(`D6,  `ov_t2);
        s9  : nota(`E6,  `ov_t1);
        s10 : nota(`G6, `ov_t2);
        s11 : nota(`D7, `ov_t1);
        s12 : nota(`C7, `ov_t2);
        s13 : nota(`G6, `ov_t1_2);
        s14 : nota(`F6, `ov_t1_2);
        s15 : nota(`E6, `ov_t2+`ov_t1_2);
        s16 : nota(`D6, `ov_t2);
        s17 : nota(`E6, `ov_t1);
        s18 : nota(`G6, `ov_t2);
        s19 : nota(`D6, `ov_t1_2);
        s20 : nota(`C6, `ov_t1_2);
        s21 : nota(`D6, `ov_t2);
        s22 : nota(`E6, `ov_t1);
        s23 : nota(`G6, `ov_t2+`ov_t1_2);
        s24 : nota(`D6, `ov_t2);
        s25 : nota(`E6, `ov_t1);
        s26 : nota(`G6, `ov_t2);                                    
        s27 : nota(`D7, `ov_t1);
        s28 : nota(`C7, `ov_t2);
        s29 : nota(`G6, `ov_t1_2);
        s30 : nota(`F6, `ov_t1_2);                                    
        s31 : nota(`E6, `ov_t1_2);
        s32 : nota(`F6, `ov_t1_2);
        s33 : nota(`E6, `ov_t2);
        s34 : nota(`C6, `ov_t2);                                    
        s35 : nota(`F6, `ov_t1_2);
        s36 : nota(`E6, `ov_t1_2);
        s37 : nota(`D6, `ov_t1_2);
        s38 : nota(`E6, `ov_t1_2);                            
        s39 : nota(`D6, `ov_t2);
        s40 : nota(`A5, `ov_t2);
        s41 : nota(`G6, `ov_t1_2);
        s42 : nota(`F6, `ov_t1_2);
        s43 : nota(`E6, `ov_t1_2);
        s44 : nota(`F6, `ov_t1_2);
        s45 : nota(`E6, `ov_t1);
        s46 : nota(`C6, `ov_t1);
        s47 : nota(`F6, `ov_t4);
        s48 : nota(`C7, `ov_t2);    		
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