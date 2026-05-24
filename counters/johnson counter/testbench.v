module johnson_counter_tb;

    reg clk;
    wire [3:0] q;

    johnson_counter uut(
        .clk(clk),
        .q(q)
    );

    initial
    begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial
    begin
        $monitor("Time=%0t q=%b", $time, q);

        #120;
        $finish;
    end

endmodule
