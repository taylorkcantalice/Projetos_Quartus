module projeto_04 (input in, clk, rst, output logic aberta, erro/*, output logic [2:0] estado_atual, estado_anterior*/);

logic [2:0] estado_atual, estado_anterior;
parameter S000 = 3'b000, S001 = 3'b001, S010 = 3'b010, S101 = 3'b101, S011 = 3'b011, S110 = 3'b110, S100 = 3'b100;
integer contador = 0;

//SENHA: 101100

always_comb begin
  if ( (contador%6 == 0) && (contador != 0) ) begin
    case (estado_atual)
	 /*S000: begin aberta <= 0; erro <= 1; end
	   S001: begin aberta <= 0; erro <= 1; end
	   S010: begin aberta <= 0; erro <= 1; end
	   S101: begin aberta <= 0; erro <= 1; end
	   S011: begin aberta <= 0; erro <= 1; end
	   S110: begin aberta <= 0; erro <= 1; end */
		
	   S100: begin
	     if (estado_anterior == S110) begin aberta <= 1; erro <= 0; end
		  else begin aberta <= 0; erro <= 1; end
	   end
	 
      default: begin aberta <= 0; erro <= 1; end
    endcase
  end else begin
    aberta <= 0; erro <= 0;
  end
end

always_ff @(posedge clk, negedge rst) begin	 
  if (~rst) begin
    estado_atual <= S000; estado_anterior <= S000; contador <= 0;
  end else begin
    contador = contador + 1;
    case (estado_atual)
	   S000: begin
		  if (in == 0) begin estado_atual <= S000; end
		  else begin estado_atual <= S001; estado_anterior <= S000; end
		end
	 
	   S001: begin
		  if (in == 0) begin estado_atual <= S010; estado_anterior <= S001; end
		  else begin estado_atual <= S001; end
		end
	 
	   S010: begin
		  if (in == 0) begin estado_atual <= S000; estado_anterior <= S010; end
		  else begin estado_atual <= S101; estado_anterior <= S010; end
		end
	 
	   S101: begin
		  if (in == 0) begin estado_atual <= S010; estado_anterior <= S101; end
		  else begin estado_atual <= S011; estado_anterior <= S101; end
		end
	 
	   S011: begin
		  if (in == 0) begin estado_atual <= S110; estado_anterior <= S011; end
		  else begin estado_atual <= S001; estado_anterior <= S011; end
		end
	 
	   S110: begin
		  if (in == 0) begin estado_atual <= S100; estado_anterior <= S110; end
		  else begin estado_atual <= S101; estado_anterior <= S110; end
		end
	 
	   S100: begin
		  if (in == 0) begin estado_atual <= S000; estado_anterior <= S100; end
		  else begin estado_atual <= S001; estado_anterior <= S100; end
		end
		
	 endcase
  end
end
		
endmodule 