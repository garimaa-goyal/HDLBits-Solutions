module top_module (
    input clk,
    input resetn,
    input [1:0] byteena,
    input [15:0] d,
    output reg [15:0] q 
);

    always @(posedge clk) begin
        if (!resetn) begin
            q <= 16'b0; // Synchronous reset to 0
        end
        else begin
            if (byteena[1]) begin
                q[15:8] <= d[15:8]; // Update upper byte
            end
            if (byteena[0]) begin
                q[7:0] <= d[7:0]; // Update lower byte
            end
            // If neither byte is enabled, q retains its value, no explicit handling needed
        end
    end
endmodule
