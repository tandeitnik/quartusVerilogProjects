module alarmeCarro (remote, sensor, clk, rst, alarm);

	input remote, sensor, clk, rst;
	output reg alarm;
	
	reg [2:0] state;
	parameter [2:0] a = 3'd0, b = 3'd1, c = 3'd2, d = 3'd3, e = 3'd4;
	
	/*
	a - aguardando
	b - esperando largar botão
	c - alarme ativado
	d - sirene ativada
	e - esperando largar o botão
	*/
	
	initial begin
		state <= a;
	end
	
	//Primeiro procedimento - Estado próximo
	always @(negedge clk, negedge rst) begin
	
		if (rst == 0) state <= a;
		else begin
	
			case (state)
			
				a: begin
					if (remote == 1) state <= b;
				end
				b: begin
					if (remote == 0) state <= c;
				end
				c: begin
					if (sensor == 1) state <= d;
					else if (remote == 1) state <= e;
				end
				d: begin
					if (remote == 1) state <= e;
				end
				e: begin
					if (remote == 0) state <= a;
				end
			
			endcase
		end
	end
	
	//Segundo procedimento - procedimento de saída
	always @(state) begin
	
		case (state)
		
			a: begin
				alarm <= 0;
			end
			b: begin
				alarm <= 0;
			end
			c: begin
				alarm <= 0;
			end
			d: begin
				alarm <= 1;
			end
			e: begin
				alarm <= 0;
			end
		
		endcase
	
	end
	
	
endmodule