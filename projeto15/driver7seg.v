/*
	driver7seg.v
	Driver para o display de 7 segmentos
*/

module driver7seg (key0, key1,b, d, display);

	input key0;
	input key1;
	output reg [3:0] b;
	output reg [7:0] d;
	output reg [7:0] display;
	
	initial begin
		display = 8'b11111110; //começa com o primeiro display selecionado
		b = 4'd0; //começa mostrando o número 0
	end
	
	always @(posedge key0) begin
	
		case (display)
		
			8'b01111111: display = 8'b11111110;
			default: display = (display << 8'b00000001) + 8'b00000001;
		
		endcase
	
	end
	
	
	always @(posedge key1) begin
	
		case (b)
		
			4'd9: b = 4'd0;
			default: b = b + 4'd1;
		
		endcase
	
	end
	
	always @(b) begin
	
		case (b)
			
			4'd0:  d = 8'b11000000; //estou seguindo a ordem de bits como dp-g-f-e-d-c-b-a
			4'd1:  d = 8'b11111001;
			4'd2:  d = 8'b10100100;
			4'd3:  d = 8'b10110000;
			4'd4:  d = 8'b10011001;
			4'd5:  d = 8'b10010010;
			4'd6:  d = 8'b10000010;
			4'd7:  d = 8'b11111000;
			4'd8:  d = 8'b10000000;
			4'd9:  d = 8'b10010000;
			
		endcase
	
	end

endmodule