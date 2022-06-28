module questao_02 (input a, b, c, output logic y, z);

always_comb begin
 if({a, b, c} == 3'b111) begin
  y = 0;
  z = 1;
 end
 else if({a, b, c} == 3'b110) begin
  y = 1;
  z = 1;
 end
 else if({a, b, c} == 3'b100) begin
  y = 0;
  z = 0;
 end
 else begin
  y = 0;
  z = 1;
 end
end

endmodule
