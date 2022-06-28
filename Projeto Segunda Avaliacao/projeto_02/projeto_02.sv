module projeto_02 (input modo, clock, reset, output logic A, B, C, D, E, F, G);
								
logic [3:0] estado_atual;
parameter estado2 = 0, estado5 = 1, estado7 = 2, estado3 = 3, estadoA = 4,
  estadoE = 5, estado8 = 6, estado0 = 7, estadoB = 8, estado4 = 9,
  estado6 = 10, estadoD = 11, estadoF = 12, estado1 = 13, estadoC = 14,
  estado9 = 15;
	
	
always_comb begin	
  case(estado_atual)		//parte combinacional
    estado2: 
	   begin A = 1; B = 1; C = 0; D = 1; E = 1; F = 0; G = 1; end
	 estado5: 
	   begin A = 1; B = 0; C = 1; D = 1; E = 0; F = 1; G = 1; end
	 estado7: 
	   begin A = 1; B = 1; C = 1; D = 0; E = 0; F = 0; G = 0; end
	 estado3: 
	   begin A = 1; B = 1; C = 1; D = 1; E = 0; F = 0; G = 1; end
	 estadoA: 
	   begin A = 1; B = 1; C = 1; D = 0; E = 1; F = 1; G = 1; end
	 estadoE: 
		begin A = 1; B = 0; C = 0; D = 1; E = 1; F = 1; G = 1; end
	 estado8: 
	   begin A = 1; B = 1; C = 1; D = 1; E = 1; F = 1; G = 1; end
	 estado0: 
		begin A = 1; B = 1; C = 1; D = 1; E = 1; F = 1; G = 0; end
	 estadoB: 
	   begin A = 0; B = 0; C = 1; D = 1; E = 1; F = 1; G = 1; end
	 estado4: 
	   begin A = 0; B = 1; C = 1; D = 0; E = 0; F = 1; G = 1; end
	 estado6: 
	   begin A = 1; B = 0; C = 1; D = 1; E = 1; F = 1; G = 1; end
	 estadoD: 
	   begin A = 0; B = 1; C = 1; D = 1; E = 1; F = 0; G = 1; end
	 estadoF: 
	   begin A = 1; B = 0; C = 0; D = 0; E = 1; F = 1; G = 1; end
	 estado1: 
	   begin A = 0; B = 1; C = 1; D = 0; E = 0; F = 0; G = 0; end
	 estadoC: 
	   begin A = 1; B = 0; C = 0; D = 1; E = 1; F = 1; G = 0; end
	 estado9: 
	   begin A = 1; B = 1; C = 1; D = 1; E = 0; F = 1; G = 1; end
  endcase
end
	
always_ff @(posedge clock, negedge reset) begin
  if(~reset) begin
    estado_atual<= estado2;
  end else begin
    if(!modo) begin
	   case(estado_atual)
		  estado2: begin estado_atual <= estado5; end
		  estado5: begin estado_atual <= estado7; end
		  estado7: begin estado_atual <= estado3; end
		  estado3: begin estado_atual <= estadoA; end
		  estadoA: begin estado_atual <= estadoE; end
		  estadoE: begin estado_atual <= estado8; end
		  estado8: begin estado_atual <= estado0; end
		  estado0: begin estado_atual <= estadoB; end
		  estadoB: begin estado_atual <= estado4; end
		  estado4: begin estado_atual <= estado6; end
		  estado6: begin estado_atual <= estadoD; end
		  estadoD: begin estado_atual <= estadoF; end
		  estadoF: begin estado_atual <= estado1; end
		  estado1: begin estado_atual <= estadoC; end
		  estadoC: begin estado_atual <= estado9; end
		  estado9: begin estado_atual <= estado2; end
		endcase
	end else begin
	  case(estado_atual)
	    estado2: begin estado_atual <= estado9; end
		 estado5: begin estado_atual <= estado2; end
		 estado7: begin estado_atual <= estado5; end
		 estado3: begin estado_atual <= estado7; end
		 estadoA: begin estado_atual <= estado3; end
		 estadoE: begin estado_atual <= estadoA; end
		 estado8: begin estado_atual <= estadoE; end
		 estado0: begin estado_atual <= estado8; end
		 estadoB: begin estado_atual <= estado0; end
		 estado4: begin estado_atual <= estadoB; end
		 estado6: begin estado_atual <= estado4; end
		 estadoD: begin estado_atual <= estado6; end
		 estadoF: begin estado_atual <= estadoD; end
		 estado1: begin estado_atual <= estadoF; end
		 estadoC: begin estado_atual <= estado1; end
		 estado9: begin estado_atual <= estadoC; end
	  endcase
    end
  end
end
								
endmodule