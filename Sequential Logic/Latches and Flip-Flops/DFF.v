module top_module (
    input clk,
    input d, 
    input ar,   // asynchronous reset
    output q);
    always @(posedge clk or posedge ar)
        begin
          if(ar) //asynchronous reset
                q <= 1'd0;
            else
                q <= d;
        end

endmodule
