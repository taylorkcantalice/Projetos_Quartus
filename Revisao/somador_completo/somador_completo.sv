module somador_completo (input A, B, Cin, output S, Cout);

assign S = (A^B)^Cin;
assign Cout = (A^B)&Cin | (A&B);

endmodule 