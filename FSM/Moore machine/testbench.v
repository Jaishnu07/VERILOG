module moore_101_tb;

    reg clk, x;
    wire y;

    moore_101 uut(
        .clk(clk),
        .x(x),
        .y(y)
    );

    // Clock Generation
    initial
    begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Input Sequence
    initial
    begin

        x = 1; #10;
        x = 0; #10;
        x = 1; #10;
        x = 1; #10;
        x = 0; #10;
        x = 1; #10;

        #20;
        $finish;

    end

endmodule
