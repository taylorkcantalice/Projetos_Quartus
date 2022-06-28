module half_adder (input A, B, output sum, Carry);

assign sum = A ^ B;
assign Carry = A & B;

endmodule 