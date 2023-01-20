/*
	somador4b.v
	somador de 4-bits usando operadores aritméticos
*/

module somador4b (a,b, cin, s, cout);

	input [3:0] a,b;
	input cin;
	output [3:0] s;
	output cout;
	
	assign {cout,s} = a+b+cin;

endmodule