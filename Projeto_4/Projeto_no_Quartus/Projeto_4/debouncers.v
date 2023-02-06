module debouncers

(
	input  clock,
	input  b1, b2, b3, b4,
	output fb1, fb2, fb3, fb4
);

	//Chamada dos componentes e repasse de parâmetros
	
	debounce db1(	.clk(clock),		//Debounce botão 1
						.button(b1),
						.debounced(fb1)
					);
					
	debounce db2(	.clk(clock),		//Debounce botão 2
						.button(b2),
						.debounced(fb2)
					);
					
	debounce db3(	.clk(clock),		//Debounce botão 3
						.button(b3),
						.debounced(fb3)
					);
					
	debounce db4(	.clk(clock),		//Debounce botão 4
						.button(b4),
						.debounced(fb4)
					);
endmodule
