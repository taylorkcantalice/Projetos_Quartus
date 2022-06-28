module black_box (input A, B, Select, output Out);

always @(A or B or Select) begin 
	if(Select == 1)
		Out = A;
	else
		Out = B;
end 

endmodule 