/*
	mux8x1_4b.v
	multiplexador 8x1 de 4 bits usando linguagem comportamental
*/

module mux8x1_4b (i0,i1,i2,i3,i4,i5,i6,i7,s,f);

	input  [3:0] i0,i1,i2,i3,i4,i5,i6,i7;
	input  [2:0] s;
	output reg [3:0] f;
	
	always @* begin
	
		case (s) 
			
			3'b000: f = i0; //como só tem uma linha de comando, não precisa usar begin e and
			3'b001: f = i1;
			3'b010: f = i2;
			3'b011: f = i3;
			3'd4: f = i4; //o verilog entende se você colocar em decimal
			3'b101: f = i5;
			3'b110: f = i6;
			3'b111: f = i7;
		
		endcase
	
	end
	

endmodule