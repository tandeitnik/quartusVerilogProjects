/*
	contador4b.v
	Contador de 4-bits usando abordagem comportamental
*/

module contador4b (clk,q);

	input clk;
	output reg [3:0] q;
	
	initial begin
		q = 4'b0000;
	end
	
	always @(posedge clk) begin	
		q = q + 4'b0001;
	end

endmodule