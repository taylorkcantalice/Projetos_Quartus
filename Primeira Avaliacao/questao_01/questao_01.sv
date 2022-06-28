module questao_01 (input X3, X2, X1, X0, output logic A, B, C, D, E, F, G);

always_comb begin
	/* Primeiramente, é realizada uma inicialização que garanta que os
		LEDs estaram deslidagos, antes das entradas correnpondetes a 
		simulação. E portanto, os segmentos estarão acesos sem 
		interferência */
 begin A=0; B=0; C=0; D=0; E=0; F=0; G=0; end 
 
 case({X3, X2, X1, X0})
  /* #0 */ 4'b0000: begin A=1; B=1; C=1; D=1; E=1; F=1; end
  /* #1 */ 4'b0001: begin B=1; C=1; end
  /* #2 */ 4'b0010: begin A=1; B=1; D=1; E=1; G=1; end
  /* #3 */ 4'b0011: begin A=1; B=1; C=1; D=1; G=1; end
  /* #4 */ 4'b0100: begin B=1; C=1; F=1; G=1; end
  /* #5 */ 4'b0101: begin A=1; C=1; D=1; F=1; G=1; end
  /* #6 */ 4'b0110: begin A=1; C=1; D=1; E=1; F=1; G=1; end
  /* #7 */ 4'b0111: begin A=1; B=1; C=1; end
  /* #8 */ 4'b1000: begin A=1; B=1; C=1; D=1; E=1; F=1; G=1; end
  /* #9 */ 4'b1001: begin A=1; B=1; C=1; D=1; F=1; G=1; end 
 endcase // END CASE_1
end // END ALWAYS_COMB

endmodule 