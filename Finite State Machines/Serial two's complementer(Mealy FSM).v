module top_module (
    input clk,
    input areset,
    input x,
    output z
); 
    reg state, next_state;
    parameter a =1'b0, b=1'b1;
    
    always@(posedge areset, posedge clk)
        begin
            if(areset)
            state <= a;
            else
                state <= next_state;
        end
    always@(*)
        begin
            case(state)
                a : next_state = (x==1'b1)?b:a;
                b : next_state = b;
            endcase
        end
    
   assign z = x ^ state;
endmodule
