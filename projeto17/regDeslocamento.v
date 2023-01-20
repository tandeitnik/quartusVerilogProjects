module regDeslocamento (d, clk, clr, ld, esq, dir, q);

	input [3:0] d;
	input clk, clr, ld, esq, dir;
	output reg [3:0] q;
	
	initial begin
		q = 4'b0000;
	end
	
	always @(negedge clk) begin
	
		casex ({clr,ld,esq,dir})
		
			4'b1xxx: q = 4'b0000;
			4'b01xx: q = d;
			4'b001x: q = d << 4'd1; //esquerda tem prioridade
			4'b0001: q = d >> 4'd1;
		
		endcase
	
	end

endmodule