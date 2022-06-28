module questao_01 (input nen, input [2:0]addr, output logic [7:0] row_sel);

always_comb begin
if (nen)
	row_sel = 8'd0;
else
 case(addr)
 3'h0: row_sel = 8'b00000001;
 3'h1: row_sel = 8'b00000010;
 3'h2: row_sel = 8'b00000100;
 3'h3: row_sel = 8'b00001000;
 3'h4: row_sel = 8'b00010000;
 3'h5: row_sel = 8'b00100000;
 3'h6: row_sel = 8'b01000000;
 3'h7: row_sel = 8'b10000000;
 endcase	
	
end

endmodule 