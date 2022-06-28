module questao_02 (input S1, S2, S3, A1, A2, A3, A4, A5, A6, A7, A8, output logic OUT);

always_comb begin
 case({S3, S2, S1})
  /* #A1 */ 3'b000: OUT <= A1;
  /* #A2 */ 3'b001: OUT <= A2;
  /* #A3 */ 3'b010: OUT <= A3;
  /* #A4 */ 3'b011: OUT <= A4;
  /* #A5 */ 3'b100: OUT <= A5;
  /* #A6 */ 3'b101: OUT <= A6;
  /* #A7 */ 3'b110: OUT <= A7;
  /* #A8 */ 3'b111: OUT <= A8;
 endcase // END CASE_1
end // END ALWAYS_COMB

endmodule 