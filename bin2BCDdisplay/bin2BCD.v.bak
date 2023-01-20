module bin2BCD (binary, centenas, dezenas, unidades);

		input [7:0] binary;
		output reg [3:0] centenas, dezenas, unidades;
		
		integer i;
		
		always @* begin
		
			centenas = 4'b0000;
			dezenas  = 4'b0000;
			unidades = 4'b0000;
			
			for(i = 7; i>=0 ; i = i-1) begin
			
				//soma 3 caso a entrada for maior que 5
				if(centenas >= 5) centenas = centenas + 3;
				if(dezenas >= 5)  dezenas = dezenas + 3;
				if(unidades >= 5) unidades = unidades + 3;
				
				//deslocando e assumindo o digito mais significativo
				centenas = centenas << 1;
				centenas[0] = dezenas[3];
				dezenas = dezenas << 1;
				dezenas[0] = unidades[3];
				unidades = unidades << 1;
				unidades[0] = binary[i];
				
				
			end
		
		end

endmodule