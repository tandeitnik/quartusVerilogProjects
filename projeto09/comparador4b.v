/*
	comparador4b.v
	Comparador de 4 bits revisitado, mas usando operadores lógicos
*/

module comparador4b (a,b,agtb,altb,aeqb);

	input [3:0] a, b;
	output agtb,altb,aeqb;
	
	assign agtb = a > b;
	assign altb = b > a;
	assign aeqb = b == a;

endmodule