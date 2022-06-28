module questao_04 (input Op, S1, S2, input [7:0] A, B, output logic [8:0] OUT);

always_comb begin 
 case({Op, S1, S2})
  3'b000: OUT <= A + B; // SOMA (OPERADOR UNITÁRIO +)
  3'b001: OUT <= A - B; // SUBTRAÇÃO (OPERADOR UNITÁRIO -)
  3'b010: OUT <= A + 1; // INCREMENTO EM A
  3'b011: OUT <= B + 1; // INCREMENTO EM B
  3'b100: OUT <= ~A; // INVERÇÂO DE A
  3'b101: OUT <= ~B; // INVERÇÂO DE B
  3'b110: OUT <= A & B; // A AND B (OPERADOR BIT-WISE AND '&')
  3'b111: OUT <= A | B; // A OR B (OPERADOR BIT-WISE OR '|')
 endcase 
end

endmodule 

/* OUTRA FORMA DE FAZER UTILIZANDO IF-ELSE */

/*always_comb begin
 if({Op, S1, S2} == {3'b000}) begin
  OUT <= A + B;
 end
 else if({Op, S1, S2} == {3'b001}) begin
  OUT <= A - B;
 end
 else if({Op, S1, S2} == {3'b010}) begin
  OUT <= A + 1;
 end
 else if({Op, S1, S2} == {3'b011}) begin
  OUT <= B + 1;
 end
 else if({Op, S1, S2} == {3'b100}) begin
  OUT <= ~A;
 end
 else if({Op, S1, S2} == {3'b101}) begin
  OUT <= ~B;
 end
 else if({Op, S1, S2} == {3'b110}) begin
  OUT <= A & B;
 end
 else begin
  OUT <= A | B;
 end
end*/