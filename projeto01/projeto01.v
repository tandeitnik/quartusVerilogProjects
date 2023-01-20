/*
 projeto01.v
 Descrição: Somador completo em verilog baseado em https://www.youtube.com/watch?v=N0JdCRZ-9rM
*/

//Declaração do módulo. Ele tem que ter o mesmo nome que o arquivo. Entre parênteses o nome das entradas e saídas
module projeto01 (a, b, cin, s, cout);
	
	//Declaração das portas, i.e., quem é entrada e quem é saída
	input a, b, cin;
	output s, cout;
	
	//Declaração dos fios intermediários
	//são os fios que ligam uma porta lógica a outra
	wire w1, w2, w3, na, nb, ncin;
	
	
	//Funcionamento do circuito - abordagem estrutural
	
	//Adicionei esses NOT pois os botões são 1 quando não pressionados
	not u0a (na, a);
	not u0b (nb, b);
	not u0c (ncin, cin);
	
	xor u0 (w1, na, nb); //as saídas sempre vêm antes das entradas da porta
	xor u1 (s, w1, ncin);
	and u2 (w2, ncin, w1);
	and u3 (w3, nb, na);
	or u4 (cout, w2, w3);
	
	

endmodule