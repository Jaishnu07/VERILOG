module t_ff_tb;

    reg t, clk;
    wire q;

    t_ff uut(
        .t(t),
        .clk(clk),
        .q(q)
    );

    // Clock Generation
    initial begin
        clk = 0;
        t=0;
        forever #5 clk = ~clk;
    end

    // Stimulus
    initial begin

        $monitor("Time=%0t | t=%b clk=%b q=%b",
                  $time, t, clk, q);

        t = 0; #10;
        t = 1; #10;
        t = 0; #10;
        t = 1; #10;

        $finish;

    end

endmodule
