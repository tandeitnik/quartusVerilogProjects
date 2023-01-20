module maquinaEstAlgoritmica (clk, rst, x, value, tot);

	input clk, rst, x;
	input [7:0] value;
	output reg [7:0] tot;

	reg [1:0] state;
	parameter a = 2'd0, b = 2'd1, c = 2'd2, d = 2'd3;
	
	initial begin
		state <= a;
	end
	
	always @(negedge clk, negedge rst) begin
	
		if (rst == 1'b0) begin
			tot <= 8'd0;
			state <= a;
		end
		else begin
		
			case (state)
			
				a: begin 
						tot <= 8'd0;
						state <= b;
					end
				b: begin
						if (x== 1'b0) state <= c;
					end
				c: begin
						tot <= tot + value;
						state <= d;
					end
				d: begin
						if (x==1'b1) state <= b;
					end
			
			
			endcase
		
		end
	
	end
	
endmodule