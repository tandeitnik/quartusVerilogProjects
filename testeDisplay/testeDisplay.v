module testeDisplay (key0, key1, key2, key3, display, d, dp);

	input key0;
	input key1;
	input key2;
	input key3;
	output reg [7:0] display;
	output reg [6:0] d;
	output reg dp;
	
	initial begin
		d = 7'b1111111; //começa com o o display em 0
		display = 8'b11111110; //para ativar o display
		dp = 1'b1;
	end
	
	always @(negedge key1) begin
		
		case (display)
			
			8'b01111111: display = (display << 8'd1);
			default: display = (display << 8'd1) + 8'd1;
		
		endcase
		
	end

	always @(negedge key0) begin
	
		case (d)
			
			7'b1111111: d = 7'b1000000; //de nada para 0
			7'b1000000: d = 7'b1111001; //de 0 para 1
			7'b1111001: d = 7'b0100100; //de 1 para 2
			7'b0100100: d = 7'b0110000; //de 2 para 3
			7'b0110000: d = 7'b0011001; //de 3 para 4
			7'b0011001: d = 7'b0010010; //de 4 para 5
			7'b0010010: d = 7'b0000010; //de 5 para 6
			7'b0000010: d = 7'b1111000; //de 6 para 7
			7'b1111000: d = 7'b0000000; // de 7 para 8
			7'b0000000: d = 7'b0010000; //de 8 para 9
			7'b0010000: d = 7'b1111111; //de 9 para 0
		endcase
	
	end
	
	always @(negedge key2) begin
	
		dp = ~dp;
	
	end
	
	


endmodule
