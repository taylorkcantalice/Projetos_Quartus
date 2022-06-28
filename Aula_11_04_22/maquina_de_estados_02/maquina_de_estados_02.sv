module maquina_de_estados_02 (input Clock, GCNT, output logic D1, D2, D3);

always_ff @(posedge Clock) begin
	D1 <= (~GCNT & D1) | (D1 & D2) | (GCNT & ~D2 & D3);
	D2 <= (~GCNT & D2) | (GCNT & D1 & D3) | (GCNT & D1 & ~D3);
	D3 <= (~GCNT & D3) | (GCNT & ~D2 & D3) | (GCNT & D1 & D2);
end

endmodule 