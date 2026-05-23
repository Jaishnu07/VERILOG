module full_subtractor(
    input a,
    input b,
    input bin,
    output diff,
    output borrow
);

assign diff   = a ^ b ^ bin;
assign borrow = (~a & b) | (b & bin) | (~a & bin);

endmodule
