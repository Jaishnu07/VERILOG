module sipo(
    input clk,
    input serial_in,
    output reg [3:0] parallel_out
);

initial
begin
    parallel_out = 4'b0000;
end

always @(posedge clk)
begin
    parallel_out <= {parallel_out[2:0], serial_in};
end

endmodule
