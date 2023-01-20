module testeDisplayClk (clk, display, d,b);

	input clk;
	output reg [7:0] display;
	output reg [7:0] d;
	output reg [3:0] b;
	
	initial begin
		display = 8'b11111110;
		d = 8'b11000000;
		b = 4'd0;
	end

	always @(negedge clk) begin
		
		d = 8'b11111111; //limpa display
		
		//anda o display para a posição seguinte
		case (display)
			8'b01111111: display = display << 1;
			default: display = (display << 1) + 8'd1;
		endcase
		
		//soma 1 ao b
		case (b)
			4'd7: b = 4'd0;
			default: b = b + 4'd1;
		endcase
		
		//coloca o valor no display
		case (b)
			
			4'd0: d = 8'b11000000; //0
			4'd1: d = 8'b11111001; //1
			4'd2: d = 8'b10100100; //2
			4'd3: d = 8'b10110000; //3
			4'd4: d = 8'b10011001; //4
			4'd5: d = 8'b10010010; //5
			4'd6: d = 8'b10000010; //6
			4'd7: d = 8'b11111000; //7
			4'd8: d = 8'b10000000; //8
			4'd9: d = 8'b10010000; //9

		endcase
		
	end	

endmodule