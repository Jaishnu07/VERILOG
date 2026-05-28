module mealy_101_tb;

    reg clk, x;
    wire y;

    mealy_101 uut(
        .clk(clk),
        .x(x),
        .y(y)
    );

    initial
    begin
        clk = 0;
        forever #5 clk = ~clk;
    end

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
