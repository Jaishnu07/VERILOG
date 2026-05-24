module siso(
    input clk,
    input serial_in,
    output reg serial_out
);

reg [3:0] shift_reg;

initial
begin
    shift_reg = 4'b0000;
end

always @(posedge clk)
begin
    shift_reg <= {shift_reg[2:0], serial_in};
    serial_out <= shift_reg[3];
end

endmodule
