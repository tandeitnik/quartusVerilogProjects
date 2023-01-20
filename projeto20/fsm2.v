module fsm2 (x,clk,rst,y);

	input x, clk, rst;
	output reg y;
	
	parameter a = 2'd0, b = 2'd1, c = 2'd2, d = 2'd3;
	
	reg [1:0] state;
	
	initial begin
		state <= a;
	end
	
	//Primeiro procedimento - Estado próximo
	always @(negedge clk, negedge rst) begin
	
		if (rst == 1'b0) state <= a;
		else begin
		
			case (state)
			
				a: if (x==1'b1) state <= b;
				b: if (x==1'b0) state <= c;
				c: begin
				
						if (x==1'b1) state <= d;
						else state <= a;
					
					end
				d: begin
				
						if (x==1'b0) begin
							state <= c;
						end
						else if (x==1'b1) state <= b;
					end
			
			endcase
		
		end
	
	end
	
	//Segundo procedimento - procedimento de saída
	always @(x,state) begin
	
		case (state)
		
			a: y <= 1'b0;
			b: y <= 1'b0;
			c: begin
				if (x==1'b0) y<=1'b0;
				else y <= 1'b1;
			end
			d: begin
				if (x==1'b0) y<=1'b1;
				else y <= 1'b0;
			end
		
		endcase
	
	end
	
endmodule
