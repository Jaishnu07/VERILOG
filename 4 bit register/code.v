module register4bit(
    input clk,
    input [3:0] d,
    output reg [3:0] q
);

initial
begin
    q = 4'b0000;
end

always @(posedge clk)
begin
    q <= d;
end

endmodule
