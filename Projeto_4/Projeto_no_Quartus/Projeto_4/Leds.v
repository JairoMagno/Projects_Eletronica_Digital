module Leds
(
	input clock_in, stop, play,
	output reg [4:1]leds_out
);

always @(clock_in) begin 

	if(stop == 1'b1) begin 
	
		leds_out <= 4'b0111;
	end
	else if(play == 1'b1) begin
	
		leds_out <= 4'b1011;
	end
	else if(play == 1'b0) begin
	
		leds_out <= 4'b1101;
	end
	else begin
	
		leds_out <= 4'b1110;
	end
end
endmodule
		