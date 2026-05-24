// It is a 2:4 decoder 
module decoder2x4(
    input [1:0] a,
    output reg [3:0] y
);

always @(*) begin

    if(a == 2'b00)
        y = 4'b0001;

    else if(a == 2'b01)
        y = 4'b0010;

    else if(a == 2'b10)
        y = 4'b0100;

    else
        y = 4'b1000;

end

endmodule
