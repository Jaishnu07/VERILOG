module piso_tb;

    reg clk, load;
    reg [3:0] parallel_in;
    wire serial_out;

    piso uut(
        .clk(clk),
        .load(load),
        .parallel_in(parallel_in),
        .serial_out(serial_out)
    );

    initial
    begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial
    begin
        load = 1;
        parallel_in = 4'b1011;
        #10;

        load = 0;

        #50;
        $finish;
    end

endmodule
