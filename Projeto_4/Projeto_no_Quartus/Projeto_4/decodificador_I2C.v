module decodificador_I2C (
	//input clk,
	input [15:0] data, //2bytes
	
	output reg centena,		//0 -> 000, 1 -> 100
	output reg [3:0] dezena,
	output reg [3:0] unidade,
	output reg [3:0] decimo
);
	always@(data) begin //Sempre que o vetor data muda, o always também muda.
	
			//data[7] decimal da temperatura (0 ->.0º, 1->.5º)
			//data[15:8] MSB+LSB da temperatura, data[15] sinal (0 -> +, 1-> -) 
			decimo  = data[7] ? 4'h5 : 4'h0;	
			centena = data[14:8] >= 100 ? 1'd1 : 1'd0;	
			
			//dado (unidade e dezena da temperatura)	
			//data[15:8] MSB+LSB da temperatura, data[15] sinal (0 -> +, 1-> -)
			if (data[15]) begin
				unidade = 4'd0; //caso temp negativa valor exibido 0
				dezena  = 4'd0;
				centena = 1'd0;
			end
			else
				if (data[14:8] >= 10 && data[14:8] < 20) 			 begin	    
					unidade = data[14:8] - 7'd10;
					dezena  = 4'h1;
				end
				else if	(data[14:8] >= 20 && data[14:8] < 30)   begin
					unidade = data[14:8] - 7'd20;
					dezena  = 4'h2;
				end
				else if	(data[14:8] >= 30 && data[15:8] < 40)   begin
					unidade = data[14:8] - 7'd30;
					dezena  = 4'h3;
				end
				else if	(data[14:8] >= 40 && data[15:8] < 50)	 begin
					unidade = data[14:8] - 7'd40;
					dezena  = 4'h4;
				end
				else if	(data[14:8] >= 50 && data[15:8] < 60)	 begin
					unidade = data[14:8] - 7'd50;
					dezena  = 4'h5;
				end
				else if	(data[14:8] >= 60 && data[15:8] < 70) 	 begin
					unidade = data[14:8] - 7'd60;
					dezena  = 4'h6;
				end
				else if	(data[14:8] >= 70 && data[15:8] < 80) 	 begin
					unidade = data[14:8] - 7'd70;
					dezena  = 4'h7;
				end
				else if	(data[14:8] >= 80 && data[15:8] < 90) 	 begin
					unidade = data[14:8] - 7'd80;
					dezena  = 4'h8;
				end
				else if	(data[14:8] >= 90 && data[15:8] < 100)  begin
					unidade = data[14:8] - 7'd90;
					dezena  = 4'h9;
				end
				else if	(data[14:8] >= 100 && data[15:8] < 110) begin
					unidade = data[14:8] - 7'd100;
					dezena  = 4'h0;
				end
				else if	(data[14:8] >= 110 && data[15:8] < 120) begin
					unidade = data[14:8] - 7'd110;
					dezena  = 4'h1;
				end
				else if	(data[14:8] >= 120) 							 begin
					unidade = data[14:8] - 7'd120;
					dezena  = 4'h2;
				end
				else 		begin
					unidade = data[11:8];	//apenas unidade
					dezena  = 4'h0;
				end	
			end
endmodule