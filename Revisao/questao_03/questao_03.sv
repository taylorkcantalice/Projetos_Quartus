module questao_03 (input [2:0] u, v, output logic [2:0] a, b, c, output logic d, e, f);

initial begin
 logic [2:0] u = 3'b001;
 logic [2:0] v = 3'b110;
end

 always_comb begin
  a = u & v;
  b = u | v;
  c = u ^ v;
  d = &u;
  e = |v;
  f = |u;
 end

endmodule 