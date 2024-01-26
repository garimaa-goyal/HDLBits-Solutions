module top_module(
    input clk,
    input in,
    input reset,
    output out); 

  reg[3:0] state, next_state;
    parameter A =00, B=01, C=10, D=11;

  //state transition logic
    always@(*)
        begin
            case(state)
                A: next_state = in==1?B:A;
                B: next_state = in==1?B:C;
                C: next_state = in==1?D:A;
                D: next_state = in==1?B:C;
            endcase
        end
    // synchronous reset logic
    always@(posedge clk)
        begin
            if(reset)
                state <= A;
            else
                state <= next_state;
        end

    // Output logic
    assign out = state == D? 1:0;
endmodule
