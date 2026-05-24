// It is a 4:2 encoder model
module encoder4x2(
    input [3:0] y,
    output reg [1:0] a
);

always @(*) begin

    if(y == 4'b0001)
        a = 2'b00;

    else if(y == 4'b0010)
        a = 2'b01;

    else if(y == 4'b0100)
        a = 2'b10;

    else if(y == 4'b1000)
        a = 2'b11;

    else
        a = 2'b00;

end

endmodule
