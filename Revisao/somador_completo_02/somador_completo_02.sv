module somador_completo_02 (input A, B, Cin, output reg S, Cout);

always @(*) begin 
case ({A, B, Cin})
	3'b001: S = 1;
	3'b010: S = 1;
	3'b100: S = 1;
	3'b111: S = 1;
	default: S = 0;
endcase
end

always @(*) begin
case ({A, B, Cin})
	3'b011: Cout = 1;
	3'b101: Cout = 1;
	3'b110: Cout = 1;
	3'b111: Cout = 1;
	default: Cout = 0;
endcase
end

endmodule 