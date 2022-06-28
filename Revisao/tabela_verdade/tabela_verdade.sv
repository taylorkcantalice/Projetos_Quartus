module tabela_verdade (input a, b, c, output logic y, z);

always_comb begin
 case({a, b, c})
	3'b111: begin y=0; z=1; end
	3'b110: begin y=1; z=1; end
	3'b100: begin y=0; z=0; end
	default: begin y=0; z=1; end
 endcase 
 
end

endmodule 