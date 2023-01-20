module top ( key1, clk, b, d, display);

	input key1, clk; //key0 reseta, key1 soma 1
	output reg [7:0] b, display;
	output reg [6:0] d; //número apresentado na tela em BCD
	
	integer i;
	
	initial begin
		d = 7'b1000000;
		b = 8'b00000000;
	end
	
	always @(negedge key1) begin
	
		b = b+8'd1;
	
	end
	
	wire [3:0] wCentenas, wDezenas, wUnidades;

	bin2BCD u0 (.binary(b), .centenas(wCentenas), .dezenas(wDezenas), .unidades(wUnidades));
	
	wire [7:0] wd0, wd1, wd2;
	driver7seg u1 (.b(wCentenas),.d(wd0));
	driver7seg u2 (.b(wDezenas),.d(wd1));
	driver7seg u3 (.b(wUnidades),.d(wd1));
	
	always @(negedge clk) begin
	
		for (i = 0; i <= 2; i=i+1) begin
		
			if (i == 0) begin
				d = wd0;
				display = 8'b01111111;
			end
			else if (i == 1) begin
				d = wd1;
				display = 8'b10111111;
			end
			else if (i == 2) begin
				d = wd2;
				display = 8'b11011111;
			end
	
		end
	
	end
	
	

endmodule
	