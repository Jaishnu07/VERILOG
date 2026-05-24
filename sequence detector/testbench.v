module sequence_detector_tb;

    reg clk, x;
    wire y;

    sequence_detector uut(
        .clk(clk),
        .x(x),
        .y(y)
    );

    // Clock
    initial
    begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Input Sequence
    initial
    begin

        x = 1; #10;
        x = 1; #10;
        x = 0; #10;
        x = 1; #10;
        x = 0; #10;
        x = 1; #10;

        #20;
        $finish;

    end

endmodule
