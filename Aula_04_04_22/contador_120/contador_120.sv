module contador_120 (input clock, reset, output logic [7:0] s);

always_ff @(posedge clock or negedge reset) 
  begin
    if(~reset)
	   s <= 8'd0;
	 else
	   begin
		  if(s == 8'd120)
	       s <= 8'd0;
		  else
		    s <= s + 8'd1;
		end
  end

endmodule 