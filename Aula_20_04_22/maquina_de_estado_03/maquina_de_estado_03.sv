module maquina_de_estado_03 (input y, clock, reset, output logic z);
	
	logic [1:0] estado_atual;
	logic [1:0] estado_anterior;
	
	parameter Sinic = 2'b00, S01 = 2'b01, S11 = 2'b11, S10 =  2'b10;
	
	always_comb begin
		case(estado_atual)
			Sinic : z <= 0;
			
			S01 : begin
				if(estado_anterior == S10)
					z <= 1;
				else
					z <= 0;
			end
			
			S11 : z <= 0;
			
			S10 : z <= 0;
		endcase
	end
	
	always_ff @(posedge clock, negedge reset) begin
		if(~reset) begin
			estado_atual <= Sinic;
		end
		else begin
			case(estado_atual)
				Sinic : begin
					if(y == 1) begin
						estado_atual <= S01; estado_anterior <= Sinic;
					end
					else 
						estado_atual <= Sinic;
				end
				
				S01 : begin
					if(y == 1) begin
						estado_atual <= S11; estado_anterior <= S01;
					end
					else begin
						estado_atual <= S10; estado_anterior <= S01;
					end
				end
				
				S11 : begin
					if(y == 0) begin
						estado_atual <= S10; estado_anterior <= S11;
					end
					else
						estado_atual <= S11;
				end
				
				S10 : begin
					if(y == 0) begin
						estado_atual <= Sinic; estado_anterior <= S10;
					end
					else begin
						estado_atual <= S01; estado_anterior <= S10;
					end
				end
			endcase
		end
	end

endmodule