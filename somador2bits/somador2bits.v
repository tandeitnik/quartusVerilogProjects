module somador2bits (a, b, cin, s, cout);

	input [1:0] a,b;
	input cin;
	output [1:0] s;
	output cout;
	
	wire na0, na1, nb0, ncin, nb1, c1;
	
	//vou negar os inputs por causa do funcionamento dos botões
	not n0 (na0,a[0]);
	not n1 (na1,a[1]);
	not n2 (nb0,b[0]);
	not n3 (nb1,b[1]);
	not n4 (ncin, cin);
	
	somadorCompleto fa0 (.a(na0), .b(nb0), .cin(ncin), .s(s[0]), .cout(c1));
	somadorCompleto fa1 (.a(na1), .b(nb1), .cin(c1), .s(s[1]), .cout(cout));

endmodule