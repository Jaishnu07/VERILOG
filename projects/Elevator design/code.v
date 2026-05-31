module elevator(
    input clk,
    input [1:0] request,
    output reg [1:0] floor
);

initial
begin
    floor = 2'b00;   
end

always @(posedge clk)
begin

    if(request > floor)
        floor <= floor + 1;

    else if(request < floor)
        floor <= floor - 1;

    else
        floor <= floor;

end

endmodule
