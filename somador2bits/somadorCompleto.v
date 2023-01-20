/*
 somadorCompleto.v
 Descrição: Somador completo em verilog baseado em https://www.youtube.com/watch?v=N0JdCRZ-9rM
*/

//Declaração do módulo. Ele tem que ter o mesmo nome que o arquivo. Entre parênteses o nome das entradas e saídas
module somadorCompleto (a, b, cin, s, cout);
	
	//Declaração das portas, i.e., quem é entrada e quem é saída
	input a, b, cin;
	output s, cout;
	
	//Declaração dos fios intermediários
	//são os fios que ligam uma porta lógica a outra
	wire w1, w2, w3;
	
	//Funcionamento do circuito - abordagem estrutural
	xor u0 (w1, a, b); //as saídas sempre vêm antes das entradas da porta
	xor u1 (s, w1, cin);
	and u2 (w2, cin, w1);
	and u3 (w3, b, a);
	or u4 (cout, w2, w3);
	
endmodule