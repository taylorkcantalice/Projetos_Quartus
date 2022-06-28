module maquina_de_estados_01 (input Clock, In, output logic D1, D2, Z);

always_ff @(posedge Clock) begin
  D1 <= (D1 & In) | (In & (~D2));
  D2 <= (D1 & In) | (In & (~D2));
  Z <= D1 & D2 & ~In;
end

endmodule 