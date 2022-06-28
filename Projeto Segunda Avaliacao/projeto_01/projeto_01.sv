module projeto_01(input modo, clk, rst, output VmA, AmA, VdA, VmB, AmB, VdB);
 
    logic[3:0] estado;
    
    parameter A1 = 0, A2 = 1, A3 = 2, A4 = 3, B = 4, C1 = 5, C2 = 6, C3 = 7, D = 8, N1 = 9, N2 = 10;
    parameter diurno = 0, noturno = 1;
    
    always_comb begin
        case(estado)
            A1: begin
                    if(modo == diurno) begin
                        VmA = 0; VmB = 1;
                        AmA = 0; AmB = 0;
                        VdA = 1; VdB = 0;
                    end else begin
                        VmA = 0; VmB = 0;
                        AmA = 0; AmB = 0;
                        VdA = 0; VdB = 0;
                    end
                end
            
            A2: begin
                    VmA = 0; VmB = 1;
                    AmA = 0; AmB = 0;
                    VdA = 1; VdB = 0;
                end
                
            A3: begin
                VmA = 0; VmB = 1;
                AmA = 0; AmB = 0;
                VdA = 1; VdB = 0;
            end
            
            A4: begin
                VmA = 0; VmB = 1;
                AmA = 0; AmB = 0;
                VdA = 1; VdB = 0;
            end
                
            B: begin
                    VmA = 0; VmB = 1;
                    AmA = 1; AmB = 0;
                    VdA = 0; VdB = 0;
                end
                
            C1: begin
                    VmA = 1; VmB = 0;
                    AmA = 0; AmB = 0;
                    VdA = 0; VdB = 1;
                end
                
            C2: begin
                    VmA = 1; VmB = 0;
                    AmA = 0; AmB = 0;
                    VdA = 0; VdB = 1;
                end
            
            C3: begin
                    VmA = 1; VmB = 0;
                    AmA = 0; AmB = 0;
                    VdA = 0; VdB = 1;
                end
                
            D: begin
                    VmA = 1; VmB = 0;
                    AmA = 0; AmB = 1;
                    VdA = 0; VdB = 0;
                end
            N1: begin
                    VmA = 0; VmB = 0;
                    AmA = 1; AmB = 1;
                    VdA = 0; VdB = 0;
                 end
            N2: begin
                    VmA = 0; VmB = 0;
                    AmA = 0; AmB = 0;
                    VdA = 0; VdB = 0;
                 end
        endcase
    end
    
    always @(posedge clk, negedge rst) begin
        
        if(~rst) begin
            estado <= A1;
        end
        
        else begin
            case(estado)
                A1:begin
                        if(modo == diurno) estado <= A2;
                        else if(modo == noturno) estado <= N1;
                    end
                    
                A2:begin
                        if(modo == diurno) estado <= A3;
                        else if(modo == noturno) estado <= N1;
                    end
                    
                A3:begin
                        if(modo == diurno) estado <= A4;
                        else if(modo == noturno) estado <= N1;
                    end
                    
                A4:begin
                        if(modo == diurno) estado <= B;
                        else if(modo == noturno) estado <= N1;
                    end
                    
                B:  begin
                        if(modo == diurno) estado <= C1;
                        else if(modo == noturno) estado <= N1;
                    end
                    
                C1:begin
                        if(modo == diurno) estado <= C2;
                        else if(modo == noturno) estado <= N1;
                    end
                
                C2:begin
                        if(modo == diurno) estado <= C3;
                        else if(modo == noturno) estado <= N1;
                    end
                
                C3:begin
                        if(modo == diurno) estado <= D;
                        else if(modo == noturno) estado <= N1;
                    end
                    
                D:  begin
                        if(modo == diurno) estado <= A1;
                        else if(modo == noturno) estado <= N1;
                    end
                    
                N1:begin
                        if(modo == diurno) estado <= A1;
                        else if(modo == noturno) estado <= N2;
                    end
                    
                N2:begin
                        if(modo == diurno) estado <= A1;
                        else if(modo == noturno) estado <= N1;
                    end
                    
            endcase
        end
    end
endmodule