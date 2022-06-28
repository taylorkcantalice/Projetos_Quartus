module soma_subtracao (input X, input [7:0] A, B, output logic [8:0] S);

always_comb begin 
	
	case(X)
		1'b0: S = A+B;
		1'b1: S = A-B;
	endcase
end
	
endmodule 