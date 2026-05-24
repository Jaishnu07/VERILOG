module down_counter(
    input clk,
    output reg [3:0] q
);

initial
begin
    q = 4'b1111;
end

always @(posedge clk)
begin
    q <= q - 1;
end

endmodule
