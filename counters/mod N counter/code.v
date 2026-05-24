// MOD N COUNTER  ( N = 10 )
module mod10_counter(
    input clk,
    output reg [3:0] q
);

initial
begin
    q = 4'b0000;
end

always @(posedge clk)
begin

    if(q == 4'b1001)
        q <= 4'b0000;

    else
        q <= q + 1;

end

endmodule
