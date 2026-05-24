module sipo_tb;

    reg clk, serial_in;
    wire [3:0] parallel_out;

    sipo uut(
        .clk(clk),
        .serial_in(serial_in),
        .parallel_out(parallel_out)
    );

    initial
    begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial
    begin
        serial_in = 1; #10;
        serial_in = 0; #10;
        serial_in = 1; #10;
        serial_in = 1; #10;

        #20;
        $finish;
    end

endmodule
