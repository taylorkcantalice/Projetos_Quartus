module maquina_de_estado_01 (input X, Clock, Reset, output logic Y/*, output logic [1:0] estado_atual*/);

logic [1:0] estado_atual;
parameter A = 0, B = 1, C = 2, D = 3;

always_comb 
  begin
    case (estado_atual)
	   A: Y = 1	;
		B: Y = 0;
		C: Y = 0;
		D: Y = 1;
    endcase
  end

always_ff @(posedge Clock, negedge Reset)
  begin
    if (~Reset)
      estado_atual <= A;
    else
	   case (estado_atual)
		  A: if (X == 0) estado_atual <= B;
		  B: if (X == 1) estado_atual <= C;
		  C: estado_atual <= D;
		  D: estado_atual <= A;
		endcase  
  end

endmodule 