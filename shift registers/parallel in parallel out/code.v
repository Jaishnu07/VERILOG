module pipo(
    input clk,
    input [3:0] parallel_in,
    output reg [3:0] parallel_out
);

always @(posedge clk)
begin
    parallel_out <= parallel_in;
end

endmodule
