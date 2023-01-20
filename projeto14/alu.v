/*
	alu.v
	unidade lógica aritmética usando linguagem comportamental
*/

module alu (a,b,s,f);

	input [3:0] a,b;
	input [2:0] s;
	output reg [3:0] f;
	
	always @* begin
	
		case (s)
		
			3'd0: f = a+b;
			3'd1: f = a-b;
			3'd2: f = a << b;
			3'd3: f = a >> b;
			3'd4: f = a&b;
			3'd5: f = a | b;
			3'd6: f = a^b;
			3'd7: f = ~a;
		
		endcase 
	
	end

endmodule