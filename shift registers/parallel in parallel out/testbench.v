module pipo_tb;

    reg clk;
    reg [3:0] parallel_in;
    wire [3:0] parallel_out;

    pipo uut(
        .clk(clk),
        .parallel_in(parallel_in),
        .parallel_out(parallel_out)
    );

    initial
    begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial
    begin
        parallel_in = 4'b1010; #10;
        parallel_in = 4'b1100; #10;

        #20;
        $finish;
    end

endmodule
