module d_ff_tb;

    reg d, clk;
    wire q;

    d_ff uut(
        .d(d),
        .clk(clk),
        .q(q)
    );

    // Clock Generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Input Stimulus
    initial begin

        $monitor("Time=%0t | clk=%b d=%b q=%b",
                  $time, clk, d, q);

        d = 0; #10;
        d = 1; #10;
        d = 0; #10;
        d = 1; #10;

        $finish;

    end

endmodule
