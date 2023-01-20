/*
	gerParidadePar.v
*/

module gerParidadePar (a,P);

	input [3:0] a;
	output P;
	
	assign P = ^a;

endmodule