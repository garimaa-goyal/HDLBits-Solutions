module top_module (
    input clk,
    input resetn,   // synchronous reset
    input in,
    output out);
    
    reg[3:0] d;
    
    always @(posedge clk) begin
        if(!resetn) begin
            d<= 4'h0;
        end
        else begin
            d <= {in, d[3:1]};
        end
    end
     assign out = d[0];
endmodule
