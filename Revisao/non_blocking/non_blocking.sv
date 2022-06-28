module non_blocking (A, CLK, C);

	input CLK;
	input A;
	output C;
	
	//wire CLK;
	//wire A;
	//reg C;
	logic B;
	
always @(posedge CLK)
	begin 
		B <= A;
		C <= B;
	end

endmodule 