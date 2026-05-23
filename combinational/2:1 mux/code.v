module mux2x1(
    input a,
    input b,
    input sel,
    output reg y
);

always @(*) begin

    if(sel == 1)
        y = b;

    else
        y = a;

end

endmodule
