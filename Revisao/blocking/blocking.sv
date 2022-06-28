module blocking (A, CLK, C);
	
	input CLK;
	input A;
	output C;
	
	wire CLK; //logic CLK;
	wire A; //logic A;
	reg C; //logic C;
	reg B; //logic B;
	
always @(posedge CLK) 
	begin
		B = A;
		C = B;
	end

endmodule 