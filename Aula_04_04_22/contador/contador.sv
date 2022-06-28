module contador (input clock, reset, output logic [3:0] s );

always_ff @(posedge clock or negedge reset)
  begin
    if(~reset)
	   s <= 4'd0;
	 else
	   s <= s + 4'd1;
end

endmodule 