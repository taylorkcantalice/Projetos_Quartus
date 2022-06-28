module comparador_02 (input [7:0] A, B, output reg igual, maior, menor);

always @(*) begin
	igual = 0;
	maior = 0;
	menor = 0;
	if(A==B)
		begin
			igual = 1;
		end
	else if(A>B)
		begin 
			maior = 1;
		end
	else
		begin
			menor = 1;
		end
	end

endmodule 