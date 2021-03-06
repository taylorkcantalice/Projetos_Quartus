module questao_03_02 (a, b, c, d, e, f);

logic [2:0] u = 3'b001;
logic [2:0] v = 3'b110;

output logic [2:0] a, b, c;
output logic d, e, f;

assign a = u & v;
assign b = u | v;
assign c = u ^ v;
assign d = &u;
assign e = |v;
assign f = |u;

endmodule 