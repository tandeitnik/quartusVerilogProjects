/*
	mux2x1.v
	multiplexador 2x1 usando condicional
	
*/

module mux2x1 (i0,i1,s,f);

	input [3:0] i0, i1;
	input s;
	output [3:0] f;
	
	assign f = s ? i0 : i1;

endmodule