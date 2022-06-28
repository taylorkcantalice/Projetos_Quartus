module non_blocking (input clock, reset, in, output logic d0, d1, d2, d3);
//Registrador de 4 Bits

always_ff @(posedge clock or posedge reset) begin
	if (reset) 
	  begin
		d0 <= 0;
		d1 <= 0;
		d2 <= 0;
		d3 <= 0;
	  end
	else 
	  begin
		d0 <= in;
		d1 <= d0;
		d2 <= d1;
		d3 <= d2;
	  end
end

endmodule 