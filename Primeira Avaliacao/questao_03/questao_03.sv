module questao_03 (input [7:0] X, output logic P);

	/* Nesse circuito foi necessário utilizar o 
		operador de redução XNOR(~^) para ser
		possível realizar a implementação de um
		gerador  de pariedade par com 8 bits */
assign P = ~^X;

endmodule 