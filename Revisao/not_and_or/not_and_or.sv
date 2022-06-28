module not_and_or (input A, B, Sel, output Sel_A, Sel_B, Out);

assign Out = (A & Sel) | (B & ~Sel);

endmodule 