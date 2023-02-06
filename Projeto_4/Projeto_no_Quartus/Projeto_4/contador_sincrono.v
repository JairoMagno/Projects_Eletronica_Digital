module contador_sincrono
(
	input clk_placa, stop, play,
	output reg [4:1] seletor_display,
	output reg [7:0] segmentos
);

	//Dígito 1 Unidade de Minuto
	//Dígito 2 Dezena de Segundo
	//Dígito 3 Unidade de Segundo
	//Dígito 4 Décimo de Segundo
	
	//Overflow do divisor de clock
	localparam overflow = 23'd 5_000_000;
	
	//Clock de saída do divisor
	wor clk_out_div;
	
	//Números de contagem
	reg [3:0] num1;
	reg [3:0] num2;
	reg [3:0] num3;
	reg [3:0] num4;
	
	//Enables dos contadores
	reg ena1, ena2, ena3, ena4;
	
	//Contador deo Seletor
	reg [15:0] cont_seletor;
	
	//bcd para ser decodificado
	reg [3:0] bcd;
	
	//Valores iniciais dos numeros de contagem
	initial begin
		num1 = 4'd0;
		num2 = 4'd0;
		num3 = 4'd0;
		num4 = 4'd0;
		ena1 = 1'b0;
		ena2 = 1'b0;
		ena3 = 1'b0;
		ena4 = 1'b1;
		cont_seletor = 1'd0;
		seletor_display = 4'b0111;
	end
	
	//Divisor de clock décimo de segundo
	DivisorClock dig1(
		.Clk_in(clk_placa),
		.Overflow(overflow),
		.Clk_out(clk_out_div)
	);
	
	//Lógica do contador
	always @(posedge clk_out_div) begin
	
		//Se em STOP zera todos os dígitos
		if(stop == 1'b1) begin
			num1 = 4'd0;
			num2 = 4'd0;
			num3 = 4'd0;
			num4 = 4'd0;
		end
		
		//Se não STOP e em PLAY
		else if(play == 1'b1) begin
		
			//Décimo de Segundo
			if(ena4 == 1'b1) begin
				num4 = num4 + 4'd1;			//Incremento
				if(num4 > 4'd9) begin
					num4 = 4'd0;				//Resetar dígito
					ena3 = 1'b1;				//Enable do próximo dígito
				end
			end
			
			//Unidade de Segundo
			if(ena3 == 1'b1) begin
				num3 = num3 + 4'd1;			//Incremento
				if(num3 > 4'd9) begin
					num3 = 4'd0;				//Resetar dígito
					ena2 = 1'b1;				//Enable do próximo dígito
				end
				ena3 = 1'b0;					//Resetar próprio enable
			end
			
			//Dezena de Segundo
			if(ena2 == 1'b1) begin
				num2 = num2 + 4'd1;			//Incremento
				if(num2 > 4'd5) begin
					num2 = 4'd0;				//Resetar dígito
					ena1 = 1'b1;				//Enable do próximo dígito
				end
				ena2 = 1'b0;					//Resetar próprio enable
			end
			
			//Unidade de Minuto
			if(ena1 == 1'b1) begin
				num1 = num1 + 4'd1;			//Incremento
				if(num1 > 4'd9) begin
					num1 = 4'd0;				//Resetar dígito
				end
				ena1 = 1'b0;					//Resetar próprio enable
			end
			
		end
	end
	
	//Oscilar o seletor de de display, 1kHz de frequência
	always @(posedge clk_placa) begin
		case(cont_seletor)
		
			//Dígito 1, Unidade de Minuto
			12500: begin
				seletor_display = 4'b0111;		//Primeiro dígito ligado
				segmentos[7] = 1'b0;				//Ponto ligado
			end
			
			//Dígito 2, Dezena de Segundo
			25000: begin
				seletor_display = 4'b1011;		//Segundo dígito ligado
				segmentos[7] = 1'b1;				//Ponto desligado
			end
			
			//Dígito 3, Unidade de Segundo
			37500: begin
				seletor_display = 4'b1101;		//Terceiro dígito ligado
				segmentos[7] = 1'b0;				//Ponto ligado
			end
			
			//Dígito 4, Décimo de Segundo
			50000: begin
				seletor_display = 4'b1110;		//Quarto dígito ligado
				segmentos[7] = 1'b1;				//Ponto desligado
			end
			
		endcase
		
		//Resetar ao contador chegar em 50_000
		if(cont_seletor >= 16'd50_000) begin
			cont_seletor = 16'd0;
		end
		//Incrementar contador
		else begin
			cont_seletor = cont_seletor + 16'd1;
		end
		
		//Definir qual número é jogado na saída
		case(seletor_display)
		
			//Jogar unidade de minuto no dígito 1
			4'b0111: begin
				bcd = num1;
			end
			
			//Jogar dezena de segundo no dígito 2
			4'b1011: begin
				bcd = num2;
			end
			
			//Jogar unidade de segundo no dígito 3
			4'b1101: begin
				bcd = num3;
			end
			
			//Jogar décimo de segundo no dígito 4
			4'b1110: begin
				bcd = num4;
			end
			
		endcase
		
		//Decodificador de segmentos
		case(bcd)
			//Número 0
			4'd0: begin
				segmentos[6:0] = 7'b1000000;
			end
			
			//Número 1
			4'd1: begin
				segmentos[6:0] = 7'b1111001;
			end
			
			//Número 2
			4'd2: begin
				segmentos[6:0] = 7'b0100100;
			end
			
			//Número 3
			4'd3: begin
				segmentos[6:0] = 7'b0110000;
			end
			
			//Número 4
			4'd4: begin
				segmentos[6:0] = 7'b0011001;
			end
			
			//Número 5
			4'd5: begin
				segmentos[6:0] = 7'b0010010;
			end
			
			//Número 6
			4'd6: begin
				segmentos[6:0] = 7'b0000010;
			end
			
			//Número 7
			4'd7: begin
				segmentos[6:0] = 7'b1111000;
			end
			
			//Número 8
			4'd8: begin
				segmentos[6:0] = 7'b0000000;
			end
			
			//Número 9
			4'd9: begin
				segmentos[6:0] = 7'b0010000;
			end
			
			//Outros, erro
			default: begin
				segmentos[6:0] = 7'b1111111;
			end
			
		endcase
	end 
endmodule