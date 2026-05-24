module sr_ff(
    input s,
    input r,
    input clk,
    output reg q
);

always @(posedge clk)
begin

    if(s==0 && r==0)
        q <= q;

    else if(s==0 && r==1)
        q <= 0;

    else if(s==1 && r==0)
        q <= 1;

    else
        q <= 1'bx;

end

endmodule
