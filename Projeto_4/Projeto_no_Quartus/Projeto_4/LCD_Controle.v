module LCD_Controle

//Parâmetros
#(
	parameter clk_freq       = 50,	//clock principal em MHz
	parameter display_lines  = 1'b1,   //número de linhas do display (0 = uma linha, 1 = duas linhas)
	parameter character_font = 1'b0,   //fonte (0 = 5x8 pontos, 1 = 5x10 pontos)
	parameter display_on_off = 1'b1,   //display on/off (0 = off, 1 = on)
	parameter cursor         = 1'b0,   //cursor on/off (0 = off, 1 = on)
	parameter blink          = 1'b0,   //blink on/off (0 = off, 1 = on)
	parameter inc_dec        = 1'b1,   //incremento/decremento (0 = decremento, 1 = incremento)
	parameter shift          = 1'b0    //shift on/off (0 = off, 1 = on)
)

(
	input clk, lcd_enable,
	input [9:0] lcd_bus,
	
	output reg rw, rs, e,
	output reg [7:0] lcd_data,
	output reg busy = 1'b1
);

//declaração de estados da fsm
reg [1:0] estado = 2'd0;

always@(posedge clk) begin
		//estado <= 2'd0; //ENERGIZACAO(0)
		
	reg [31:0] clk_count = 1'b0; //contador para temporização de eventos
	
	case(estado)
	//Espera 50ms para garantir a energização do LCD
		0 : begin
			 busy <= 1'b1;                           //Quando for ENERGIZAÇÃO
			 if(clk_count < (50000 * clk_freq)) begin //Espera 50ms
				 clk_count = clk_count + 1;
				 estado   <= 2'd0;                     //Enquanto estiver ocupado, permaneço na energização
			 end
			 else begin                               //Energização Completa
				 clk_count = 0;
				 rs <= 1'b0;                           //operação de instrução
				 rw <= 1'b0;                           //Operação de escrita
				 lcd_data <= 8'b00110000;              //8-bits 1L*16 5*8 function_set 
				 estado <= 2'd1;                       //INICIALIZAÇÃO(1)
			 end
		end
	//sequência de inicialização do display LCD
		1 : begin//INICIALIZAÇÃO(1)
			 busy <= 1'b1;                                 //lcd ocupado
			 clk_count = clk_count + 1;                    //function set
			 if(clk_count < (10 * clk_freq)) begin 
				lcd_data <= {4'b0011, display_lines, character_font, 2'b00};
				e <= 1'b1;                                  //habilita o LCD (executa o comando)
				estado <= 2'd1;
			 end
			 else if(clk_count < (60 * clk_freq)) begin    //espera 50 us
				lcd_data <= 8'b00000000;                    //nenhuma nova instrução, apenas aguarda
				e <= 1'b0;                                  //desabilita o LCD
				estado <= 2'd1;
			 end
			 else if(clk_count < (70 * clk_freq)) begin    //display on/off control
				lcd_data <= {5'b00001, display_on_off, cursor, blink};
				e <= 1'b1;                                  //habilita o LCD (executa o comando)
				estado <= 2'd1;
			 end
			 else if(clk_count < (120 * clk_freq)) begin   //espera 50 us
					lcd_data <= 8'b00000000;
					e <= 1'b0;
					estado <= 2'd1;
			 end
			 else if(clk_count < (130 * clk_freq)) begin   //display clear
					lcd_data <= 8'b00000001;
					e <= 1'b1;                               //habilita o LCD (executa o comando)
					estado <= 2'd1;
			 end
			 else if(clk_count < (2130 * clk_freq)) begin  //wait 2 ms
					lcd_data <= 8'b00000000;
					e <= 1'b0;
					estado <= 2'd1;
			 end
			 else if(clk_count < (2140 * clk_freq)) begin  //entry mode set
					lcd_data <= {6'b000001, inc_dec, shift};
					e <= 1'b1;                               //habilita o LCD (executa o comando)
					estado <= 2'd1;
			 end
			 else if(clk_count < (2200 * clk_freq)) begin  //wait 60 us
					lcd_data <= 8'b00000000;
					e <= 1'b0;
					estado <= 2'd1;
			 end
			 else begin                                    //initialization complete
					clk_count = 0;
					busy <= 1'b0;
					estado <= 2'd2;                          //PRONTO(2)
			 end
		end
		2 :begin//PRONTO
			if (lcd_enable) begin
				busy <= 1'b1;
				rs <= lcd_bus[9];
				rw <= lcd_bus[8];
				lcd_data <= lcd_bus;	//vamo verrrr
				clk_count = 0;            
				estado <= 2'd3;
			end
			else begin
				busy <= 1'b0;
				rs <= 1'b0;
				rw <= 1'b0;
				lcd_data <= 8'b00000000;                    //O mesmo que uma instrução de fazer nada
				clk_count = 0;
				estado <= 2'd2;
			end
		end
		3 :begin//ENVIAR
			busy <= 1'b1;
			if (clk_count < (50 * clk_freq)) begin         //espera 50 us
					if (clk_count < clk_freq) begin          //enable negativo
						e <= 1'b0; 			                    //desabilita o LCD
					end
					else if(clk_count < (14 * clk_freq)) begin //enable positivo em metade do ciclo (25us)
						e <= 1'b1;                            //habilita o LCD (executa o comando)
					end
					else if(clk_count < (27 * clk_freq)) begin //enable negativo na outra metade do ciclo (25us)
						e <= 2'b0;                            //desabilita o LCD
					end
					clk_count = clk_count + 1;
					estado <= 2'd3;
			end
			else begin
				clk_count = 0;
				estado <= 2'd2;
			end
		 end	
		endcase
	end	
endmodule
			 