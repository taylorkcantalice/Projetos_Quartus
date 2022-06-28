module multiplexador (input [1:0] SEL, input A0, A1, A2, A3, output logic C);

always_comb begin
	
	case(SEL)
		2'd0: C <= A0;
		2'd1: C <= A1;
		2'd2: C <= A2;
		2'd3: C <= A3;
	endcase
end

endmodule
		