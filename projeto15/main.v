/*
	main.v
	Script para testar o modulo de driver de 7 segmentos. Esse modulo tem duas entradas: seg e count.
	A entrada seg, que será atribuída a um botão, irá ser um contador de 0 a 7 e servirá para escolher
	qual do 8 displays será usado (a cada apertada o display será mudado para o seguinte). A entrada
	count será um contador de 0 a 9 e irá determinar o número que será mostrado no display. No caso a 
	cada apertada o número irá subir uma unidade até resetar para 0.
*/

/*
Esse módulo tem que ter 2 saídas. A entrada seg tem que ter uma saída que depende dela: essa saida é justamente
o anodo do segmento que será acesso. A saida d é dependente do count.
*/

module main (seg,count,display,b,d);

	input [2:0] seg; //para mudar o display
	input [3:0] count; //para mudar o digito mostrado
	output reg [3:0] display; //qual display estará acesso
	output reg [3:0] b;
	output [6:0] d;
	
	//começar com o display 0 selecionado mostrando o digito 0
	initial begin
		display = 4'd0;
		b = 4'd0;
		d = 7'd0;
	end
	
	
	always @(posedge seg) begin
		
		case (display)
		
			4'd7: display = 4'd0; //caso o display seja o 7, ele volta a ser o 0
			default: display = display + 4'd1; //por dafault, ele vai para o seguinte
		
		endcase
	
	end
	
	
	always @(posedge count) begin
		
		b = b + 4'd1;
		driver7seg driver (.b(b),.d(d));
	
	end
 
endmodule
