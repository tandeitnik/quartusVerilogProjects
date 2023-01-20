module fsm1 (x,clk, rst, y);

	input x, clk, rst;
	output reg y;
	
	//Registrador de estado
	reg [1:0] state; //como tem 4 estados, crio um registo com 2 bits
	
	//Codificação dos estados
	parameter a = 2'd0, b = 2'd1, c = 2'd2, d = 2'd3;
	
	//Inicialização da máquina
	initial begin
		state <= a; //já que é um circuito sequencial, irei usar atribuição não bloqueável
		// y <= 1'b0; não é recomendável inicializar a saída da máquina
	end
	
	//Primeiro procedimento - Estado próximo
	always @(negedge clk, negedge rst) begin
		//reset tem prioridade, então começo verificando ele
		//como é sensível a borda de descida, então rst vale 0 se ele desceu
		if (rst == 1'b0) begin
			state <= a;
		end
		else begin
			case (state)
			
				a: begin
					if (x == 1'b0) state <= b;
				end
				b: begin
					if (x == 1'b0) state <= c;
				end
				c: begin
					state <= d;
				end
				d: begin
					state <= a;
				end
			
			endcase
		end
	end
	
	//Segundo procedimento - procedimento de saída
	always @(state) begin
		
		case (state)
		
			a: y = 1'b1;
			b: y = 1'b0;
			c: y = 1'b0;
			d: y = 1'b1;
		
		endcase
	
	end

endmodule