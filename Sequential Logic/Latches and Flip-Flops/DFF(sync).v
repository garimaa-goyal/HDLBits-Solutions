module top_module (
    input clk,
    input d, 
    input r,   // synchronous reset
    output q);
  always @(posedge clk) begin // reset is synchronous
        if(r)
            q <= 1'b0;
        else
            q <= d;
    end

endmodule
