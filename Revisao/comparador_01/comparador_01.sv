module comparador_01 (input [7:0] A, B, output reg igual, maior, menor);

always @(*) begin
	if (A==B)
		begin
			igual = 1;
			maior = 0;
			menor = 0;
		end
	else if (A>B)
		begin
			igual = 0;
			maior = 1;
			menor = 0;
		end
	else 
		begin 
			igual = 0;
			maior = 0;
			menor = 1;
		end
	end

endmodule
			