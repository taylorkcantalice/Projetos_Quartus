module decodificador (input nen, input [2:0] addr, output logic [7:0] row_sel);

always_comb begin 
if(nen) 
 row_sel = 8'b00000000; //8'd0;
else
  case(addr)
   3'd1: row_sel = 8'b00000001;
	3'd2: row_sel = 8'b00000010;
	3'd3: row_sel = 8'b00000100;
	3'd4: row_sel = 8'b00001000;
	3'd5: row_sel = 8'b00010000;
	3'd6: row_sel = 8'b00100000;
	3'd7: row_sel = 8'b01000000;
	3'd8: row_sel = 8'b10000000;
  endcase
end 

endmodule 