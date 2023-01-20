/*
	comparadorMagnitude4b.v
	
	Esse projeto implementa um comparador de 4bits usando fluxo de dados
	
*/

module comparadorMagnitude4b (a,b,aeqb,agtb,altb);

	input [3:0] a,b;
	output aeqb,agtb,altb;
	
	wire [3:0] x; //como vou usar x como intermediário, preciso declarar eles como wire
	
	assign x = ~(a^b); //vou tentar fazer bitwise!
	assign aeqb = &x; //usando operador de redução!
	assign agtb = a[3]&(~b[3]) | x[3]&a[2]&(~b[2]) | (&x[3:2])&a[1]&(~b[1]) | (&x[3:1])&a[0]&(~b[0]); //note que usei reduções e slices para simplificar o código
	assign altb = b[3]&(~a[3]) | x[3]&b[2]&(~a[2]) | (&x[3:2])&b[1]&(~a[1]) | (&x[3:1])&b[0]&(~a[0]);
	

endmodule