/*
	mux8x1.v
	multiplexador 8x1
*/

module mux8x1 (i0,i1,i2,i3,i4,i5,i6,i7,s,f);
	
	input [3:0] i0,i1,i2,i3,i4,i5,i6,i7;
	input [2:0] s;
	output [3:0] f;
	
	assign f[3] = (~s[2])&(~s[1])&(~s[0])&i0[3] | (~s[2])&(~s[1])&(s[0])&i1[3] | (~s[2])&(s[1])&(~s[0])&i2[3] | (~s[2])&(s[1])&(s[0])&i3[3] | (s[2])&(~s[1])&(~s[0])&i4[3] | (s[2])&(~s[1])&(s[0])&i5[3] | (s[2])&(s[1])&(~s[0])&i6[3] | (s[2])&(s[1])&(s[0])&i7[3];
	assign f[2] = (~s[2])&(~s[1])&(~s[0])&i0[2] | (~s[2])&(~s[1])&(s[0])&i1[2] | (~s[2])&(s[1])&(~s[0])&i2[2] | (~s[2])&(s[1])&(s[0])&i3[2] | (s[2])&(~s[1])&(~s[0])&i4[2] | (s[2])&(~s[1])&(s[0])&i5[2] | (s[2])&(s[1])&(~s[0])&i6[2] | (s[2])&(s[1])&(s[0])&i7[2];
	assign f[1] = (~s[2])&(~s[1])&(~s[0])&i0[1] | (~s[2])&(~s[1])&(s[0])&i1[1] | (~s[2])&(s[1])&(~s[0])&i2[1] | (~s[2])&(s[1])&(s[0])&i3[1] | (s[2])&(~s[1])&(~s[0])&i4[1] | (s[2])&(~s[1])&(s[0])&i5[1] | (s[2])&(s[1])&(~s[0])&i6[1] | (s[2])&(s[1])&(s[0])&i7[1];
	assign f[0] = (~s[2])&(~s[1])&(~s[0])&i0[0] | (~s[2])&(~s[1])&(s[0])&i1[0] | (~s[2])&(s[1])&(~s[0])&i2[0] | (~s[2])&(s[1])&(s[0])&i3[0] | (s[2])&(~s[1])&(~s[0])&i4[0] | (s[2])&(~s[1])&(s[0])&i5[0] | (s[2])&(s[1])&(~s[0])&i6[0] | (s[2])&(s[1])&(s[0])&i7[0];
	
endmodule