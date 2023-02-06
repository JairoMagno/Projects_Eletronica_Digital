module Logica_LCD
(
	input clk, lcd_busy,
	input [1:0] seletor,
	input centena, 
	input [3:0]dezena, 
	input [3:0]unidade, 
	input [3:0]decimo,
	
	output lcd_ena,
	output [9:0] lcd_bar
		
);

reg [1:0] estado = 2'b00;	
reg lcd_enable;
reg [9:0] lcd_bus;

assign lcd_ena = lcd_enable;
assign lcd_bar = lcd_bus;

always@(posedge clk) begin

	reg [5:0] char = 6'd0; //em caso de erro, usar o assign.	
	
	if(seletor == 2'b00) begin //Seleciona qual frase estará mostrando no lcd referente a determinada musica.
		estado <= 2'b00;
	end
	else if(seletor == 2'b01) begin
		estado <= 2'b01;
	end
	else if(seletor == 2'b10) begin
		estado <= 2'b10;
	end
	else if(seletor == 2'b11) begin
		estado <= 2'b11;
	end
	
	
	if(estado == 2'b00) begin
		if((!lcd_busy) & (!lcd_enable)) begin
			lcd_enable <= 1'b1; //Habilita o LCD
			if(char < 34) begin 
				char = char + 1;//Incrementa o estado
			end
			else begin
				char = 0;
			end
			case (char)
				0  : lcd_bus <= {2'b00, 8'b10000000}; //inst. linha 1 // (" Frere Jacques  ")
				1  : lcd_bus <= {2'b10, 8'b00100000}; //Espaço
				2  : lcd_bus <= {2'b10, 8'b01000110}; //F
				3  : lcd_bus <= {2'b10, 8'b01110010}; //r
				4  : lcd_bus <= {2'b10, 8'b01100101}; //e  
				5  : lcd_bus <= {2'b10, 8'b01110010}; //r 
				6  : lcd_bus <= {2'b10, 8'b01100101}; //e   
				7  : lcd_bus <= {2'b10, 8'b00100000}; //Espaço 
				8  : lcd_bus <= {2'b10, 8'b01001010}; //J   
				9  : lcd_bus <= {2'b10, 8'b01100001}; //a   
				10 : lcd_bus <= {2'b10, 8'b01100011}; //c   
				11 : lcd_bus <= {2'b10, 8'b11110001}; //q  
				12 : lcd_bus <= {2'b10, 8'b01110101}; //u
				13 : lcd_bus <= {2'b10, 8'b01100101}; //e  
				14 : lcd_bus <= {2'b10, 8'b01110011}; //s   
				15 : lcd_bus <= {2'b10, 8'b00100000}; //Espaço    
				16 : lcd_bus <= {2'b10, 8'b00100000}; //ult char da linha 1//Espaço    
				17 : lcd_bus <= {2'b00, 8'b11000000}; //inst. linha 2 // ("  Temp: CDU.X°C ")
				18 : lcd_bus <= {2'b10, 8'b00100000}; //prim. char da linha 2//Espaço 
				19 : lcd_bus <= {2'b10, 8'b01010100}; //T
				20 : lcd_bus <= {2'b10, 8'b01100101}; //e 
				21 : lcd_bus <= {2'b10, 8'b01101101}; //m   
				22 : lcd_bus <= {2'b10, 8'b01110000}; //p
				23 : lcd_bus <= {2'b10, 8'b00111010}; //:  
				24 : lcd_bus <= {2'b10, 8'b00100000}; //Espaço  
				25 : lcd_bus <= {2'b10, 7'b0011000, centena}; //Centena   
				26 : lcd_bus <= {2'b10, 4'b0011, dezena};     //Dezena 
				27 : lcd_bus <= {2'b10, 4'b0011, unidade};    //Unidade 
				28 : lcd_bus <= {2'b10, 8'b00101110};         //.   
				29 : lcd_bus <= {2'b10, 4'b0011, decimo};     //decimo   
				30 : lcd_bus <= {2'b10, 8'b11011111}; //° 
				31 : lcd_bus <= {2'b10, 8'b01000011}; //C   
				32 : lcd_bus <= {2'b10, 8'b00100000}; //Espaço
				33 : lcd_bus <= {2'b10, 8'b00100000}; //Espaço
				default: lcd_enable <= 1'b0; //desabilita o LCD
			endcase
		end
			else begin
				lcd_enable <= 1'b0; //desabilita o LCD
			end
	end //end do if estado
	
	
	if(estado == 2'b01) begin
		if((!lcd_busy) & (!lcd_enable)) begin
			lcd_enable <= 1'b1; //Habilita o LCD
			if(char < 34) begin 
				char = char + 1;//Incrementa o estado
			end
			else begin
				char = 0;
			end
			case (char)
				0  : lcd_bus <= {2'b00, 8'b10000000}; //inst. linha 1 // (" Edwig's Theme  ")
				1  : lcd_bus <= {2'b10, 8'b00100000}; //Espaço
				2  : lcd_bus <= {2'b10, 8'b01000101}; //E
				3  : lcd_bus <= {2'b10, 8'b01100100}; //d
				4  : lcd_bus <= {2'b10, 8'b01110111}; //w  
				5  : lcd_bus <= {2'b10, 8'b01101001}; //i 
				6  : lcd_bus <= {2'b10, 8'b01100111}; //g   
				7  : lcd_bus <= {2'b10, 8'b00100111}; //' 
				8  : lcd_bus <= {2'b10, 8'b01110011}; //s   
				9  : lcd_bus <= {2'b10, 8'b00100000}; //espaço   
				10 : lcd_bus <= {2'b10, 8'b01010100}; //T   
				11 : lcd_bus <= {2'b10, 8'b01101000}; //h  
				12 : lcd_bus <= {2'b10, 8'b01100101}; //e
				13 : lcd_bus <= {2'b10, 8'b01101101}; //m  
				14 : lcd_bus <= {2'b10, 8'b01100101}; //e   
				15 : lcd_bus <= {2'b10, 8'b00100000}; //espaço    
				16 : lcd_bus <= {2'b10, 8'b00100000}; //ult char da linha 1//espaço     
				17 : lcd_bus <= {2'b00, 8'b11000000}; //inst. linha 2 // ("  Temp: CDU.X°C ")
				18 : lcd_bus <= {2'b10, 8'b00100000}; //prim. char da linha 2//Espaço 
				19 : lcd_bus <= {2'b10, 8'b01010100}; //T
				20 : lcd_bus <= {2'b10, 8'b01100101}; //e 
				21 : lcd_bus <= {2'b10, 8'b01101101}; //m   
				22 : lcd_bus <= {2'b10, 8'b01110000}; //p
				23 : lcd_bus <= {2'b10, 8'b00111010}; //:  
				24 : lcd_bus <= {2'b10, 8'b00100000}; //Espaço  
				25 : lcd_bus <= {2'b10, 7'b0011000, centena}; //Centena   
				26 : lcd_bus <= {2'b10, 4'b0011, dezena};     //Dezena 
				27 : lcd_bus <= {2'b10, 4'b0011, unidade};    //Unidade 
				28 : lcd_bus <= {2'b10, 8'b00101110};         //.   
				29 : lcd_bus <= {2'b10, 4'b0011, decimo};     //decimo   
				30 : lcd_bus <= {2'b10, 8'b11011111}; //° 
				31 : lcd_bus <= {2'b10, 8'b01000011}; //C   
				32 : lcd_bus <= {2'b10, 8'b00100000}; //Espaço
				33 : lcd_bus <= {2'b10, 8'b00100000}; //Espaço
				default : lcd_enable <= 1'b0; //desabilita o LCD
			endcase
			end
			else begin
				lcd_enable <= 1'b0; //desabilita o LCD
			end
	end //end do if estado
	
	
	if(estado == 2'b10) begin
		if((!lcd_busy) & (!lcd_enable)) begin
			lcd_enable <= 1'b1; //Habilita o LCD
			if(char < 34) begin 
				char = char + 1;//Incrementa o estado
			end
			else begin
				char = 0;
			end
			case (char)
				0  : lcd_bus <= {2'b00, 8'b10000000}; //inst. linha 1 // (" Song of Storms ")
				1  : lcd_bus <= {2'b10, 8'b00100000}; //prim. char da linha 1//espaço 
				2  : lcd_bus <= {2'b10, 8'b01010011}; //S 
				3  : lcd_bus <= {2'b10, 8'b01101111}; //o 
				4  : lcd_bus <= {2'b10, 8'b01101110}; //n 
				5  : lcd_bus <= {2'b10, 8'b01100111}; //g 
				6  : lcd_bus <= {2'b10, 8'b00100000}; //Espaço   
				7  : lcd_bus <= {2'b10, 8'b01101111}; //o   
				8  : lcd_bus <= {2'b10, 8'b01100110}; //f  
				9  : lcd_bus <= {2'b10, 8'b00100000}; //Espaço 
				10 : lcd_bus <= {2'b10, 8'b01010011}; //S   
				11 : lcd_bus <= {2'b10, 8'b01110100}; //t   
				12 : lcd_bus <= {2'b10, 8'b01101111}; //o  
				13 : lcd_bus <= {2'b10, 8'b01110010}; //r   
				14 : lcd_bus <= {2'b10, 8'b01101101}; //m   
				15 : lcd_bus <= {2'b10, 8'b01110011}; //s   
				16 : lcd_bus <= {2'b10, 8'b00100000}; //ult char da linha 1//espaço     
				17 : lcd_bus <= {2'b00, 8'b11000000}; //inst. linha 2 // ("  Temp: CDU.X°C ")
				18 : lcd_bus <= {2'b10, 8'b00100000}; //prim. char da linha 2//Espaço 
				19 : lcd_bus <= {2'b10, 8'b01010100}; //T
				20 : lcd_bus <= {2'b10, 8'b01100101}; //e 
				21 : lcd_bus <= {2'b10, 8'b01101101}; //m   
				22 : lcd_bus <= {2'b10, 8'b01110000}; //p
				23 : lcd_bus <= {2'b10, 8'b00111010}; //:  
				24 : lcd_bus <= {2'b10, 8'b00100000}; //Espaço  
				25 : lcd_bus <= {2'b10, 7'b0011000, centena}; //Centena   
				26 : lcd_bus <= {2'b10, 4'b0011, dezena};     //Dezena 
				27 : lcd_bus <= {2'b10, 4'b0011, unidade};    //Unidade 
				28 : lcd_bus <= {2'b10, 8'b00101110};         //.   
				29 : lcd_bus <= {2'b10, 4'b0011, decimo};     //decimo   
				30 : lcd_bus <= {2'b10, 8'b11011111}; //° 
				31 : lcd_bus <= {2'b10, 8'b01000011}; //C   
				32 : lcd_bus <= {2'b10, 8'b00100000}; //Espaço
				33 : lcd_bus <= {2'b10, 8'b00100000}; //Espaço   			 
				default : lcd_enable <= 1'b0; //desabilita o LCD
			endcase
			end
			else begin
				lcd_enable <= 1'b0; //desabilita o LCD
			end
	end //end do if estado
	
	
	if(estado == 2'b11) begin
		if((!lcd_busy) & (!lcd_enable)) begin
			lcd_enable <= 1'b1; //Habilita o LCD
			if(char < 34) begin 
				char = char + 1;//Incrementa o estado
			end
			else begin
				char = 0;
			end
			case (char)
				0  : lcd_bus <= {2'b00, 8'b10000000}; //inst. linha 1 // (" Zelda's Lullaby")
				1  : lcd_bus <= {2'b10, 8'b00100000}; //Espaço
				2  : lcd_bus <= {2'b10, 8'b01011010}; //Z
				3  : lcd_bus <= {2'b10, 8'b01100101}; //e
				4  : lcd_bus <= {2'b10, 8'b01101100}; //l  
				5  : lcd_bus <= {2'b10, 8'b01100100}; //d 
				6  : lcd_bus <= {2'b10, 8'b01100001}; //a   
				7  : lcd_bus <= {2'b10, 8'b00100111}; //' 
				8  : lcd_bus <= {2'b10, 8'b01110011}; //s   
				9  : lcd_bus <= {2'b10, 8'b00100000}; //espaço   
				10 : lcd_bus <= {2'b10, 8'b01001100}; //L   
				11 : lcd_bus <= {2'b10, 8'b01110101}; //u  
				12 : lcd_bus <= {2'b10, 8'b01101100}; //l
				13 : lcd_bus <= {2'b10, 8'b01101100}; //l  
				14 : lcd_bus <= {2'b10, 8'b01100001}; //a   
				15 : lcd_bus <= {2'b10, 8'b01100010}; //b    
				16 : lcd_bus <= {2'b10, 8'b01111001}; //ult char da linha 1//y     
				17 : lcd_bus <= {2'b00, 8'b11000000}; //inst. linha 2 // ("  Temp: CDU.X°C ")
				18 : lcd_bus <= {2'b10, 8'b00100000}; //prim. char da linha 2//Espaço 
				19 : lcd_bus <= {2'b10, 8'b01010100}; //T
				20 : lcd_bus <= {2'b10, 8'b01100101}; //e 
				21 : lcd_bus <= {2'b10, 8'b01101101}; //m   
				22 : lcd_bus <= {2'b10, 8'b01110000}; //p
				23 : lcd_bus <= {2'b10, 8'b00111010}; //:  
				24 : lcd_bus <= {2'b10, 8'b00100000}; //Espaço  
				25 : lcd_bus <= {2'b10, 7'b0011000, centena}; //Centena   
				26 : lcd_bus <= {2'b10, 4'b0011, dezena};     //Dezena 
				27 : lcd_bus <= {2'b10, 4'b0011, unidade};    //Unidade 
				28 : lcd_bus <= {2'b10, 8'b00101110};         //.   
				29 : lcd_bus <= {2'b10, 4'b0011, decimo};     //decimo   
				30 : lcd_bus <= {2'b10, 8'b11011111}; //° 
				31 : lcd_bus <= {2'b10, 8'b01000011}; //C   
				32 : lcd_bus <= {2'b10, 8'b00100000}; //Espaço
				33 : lcd_bus <= {2'b10, 8'b00100000}; //Espaço
			endcase
			end
			else begin
				lcd_enable <= 1'b0; //desabilita o LCD
			end
	end //end do if estado	
end //end do always
endmodule 