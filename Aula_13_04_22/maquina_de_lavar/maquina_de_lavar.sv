module maquina_de_lavar (input clock, reset_n, inicio, cheio, tempo, secar,
								  output logic valvula_agua, modo_agitar, modo_girar,
								  output logic [1:0] estado_atual);

//logic [1:0] estado_atual;
parameter esperar = 0, encher = 1, agitar = 2, girar = 3;

// Parte Combinacional
always_comb begin
  case(estado_atual)
    esperar: begin
	 			  valvula_agua = 0; modo_agitar = 0; modo_girar = 0;
	 			 end
				 
	 encher: begin
				  valvula_agua = 1; modo_agitar = 0; modo_girar = 0;
				end
				
	 agitar: begin
				  valvula_agua = 0; modo_agitar = 1; modo_girar = 0;
	         end
				
	 girar: begin
			    valvula_agua = 0; modo_agitar = 0; modo_girar = 1;
			  end
  endcase
end

// Parte sequencial
always @(posedge clock, negedge reset_n)
  if(~reset_n)
    estado_atual <= esperar;
  else
    case(estado_atual)
	   esperar: if (inicio == 1)
				    estado_atual <= encher;
					 
		encher: if (cheio == 1)
				    estado_atual <= agitar;
					 
		agitar: if (tempo == 1)
				    estado_atual <= girar;
					 
		girar: if (secar == 0)
				    estado_atual <= esperar;
	  endcase

endmodule 