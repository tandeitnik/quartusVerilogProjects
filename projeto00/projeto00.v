/*
 projeto00.v
 Irei usar esse projeto para descobrir experimenalmente se os LEDs e botões da placa funionam em nível
 alto ou baixo, i.e., o LED liga quando recebe 0 ou 1? Quando o botão não está pressionado ele gera 0 ou 1?
*/

module projeto00 (a,b, led0);
	
	input a,b;
	output led0; 
	
	//Funcionamento do circuito - abordagem estrutural
	
	and u1 (led0,a,b);

endmodule