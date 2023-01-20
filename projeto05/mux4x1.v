/*
	mux4x1.v
	Multiplexador 4 entradas uma saída
*/

module mux4x1 (i,s,f);

	input [3:0] i; //4-bit input
	input [1:0] s; //2-bit selector
	output f; //1-bit output

	assign f = i[0]&(~s[1])&(~s[0]) | i[1]&(~s[1])&(s[0]) | i[2]&(s[1])&(~s[0]) | i[3]&(s[1])&(s[0]);
 	
endmodule