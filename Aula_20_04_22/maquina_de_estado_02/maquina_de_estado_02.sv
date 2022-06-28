module maquina_de_estado_02 (input X, Clock, Reset, output logic Y);

logic [1:0] estado_atual;
parameter A = 0, B = 1, C = 2, D = 3;

always_comb 
  begin
    case (estado_atual)
	   A: Y <= 0;
		  
		B: begin
		    if (X == 0) 
			   Y <= 1;
			 else
			   Y <= 0;
		   end
		  
		C: begin
		    if (X == 0) 
			   Y <= 1;
			 else
			   Y <= 0;
		   end
		  
		D: begin
		    if (X == 0) 
			   Y <= 1;
			 else
			   Y <= 0;
		   end
    endcase
  end

always_ff @(posedge Clock, negedge Reset)
  begin
    if (~Reset)
      estado_atual <= A;
    else
	   case (estado_atual)
		  A: begin 
			   if (X == 1)
				  estado_atual <= B;
           end				
		  B: begin 
			   if (X == 0)
				  estado_atual <= A; 
				else
				  estado_atual <= D; 
           end			 
		  C: begin 
			   if (X == 0)
				  estado_atual <= A;
           end	 
		  D: begin 
			   if (X == 0)
				  estado_atual <= A;
				else
				  estado_atual <= C;
           end
		endcase  
  end

endmodule 