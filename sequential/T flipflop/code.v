module t_ff(
    input t,
    input clk,
    output reg q
);

initial
begin
    q = 0;
end

always @(posedge clk)
begin

    if(t == 0)
        q <= q;

    else
        q <= ~q;

end

endmodule
