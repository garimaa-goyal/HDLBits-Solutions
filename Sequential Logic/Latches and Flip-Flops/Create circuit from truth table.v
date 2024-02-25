module top_module (
    input clk,
    input j,
    input k,
    output Q); 
  
    always @(posedge clk)
        begin
          Q <= ((j && ~Q) || (Q && ~k)); // characteristic equation of JK Flip FLop
        end
endmodule
