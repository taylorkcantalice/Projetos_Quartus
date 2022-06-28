module and_or (input X, A, B, output Out);

assign Out = X ? (A & B) : (A | B);
// X = 1 soma A e B
// X = 0 subtrai A e B

endmodule 