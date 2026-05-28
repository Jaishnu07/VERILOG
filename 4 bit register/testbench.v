module register4bit_tb;

    reg clk;
    reg [3:0] d;
    wire [3:0] q;

    register4bit uut(
        .clk(clk),
        .d(d),
        .q(q)
    );

    initial
    begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial
    begin

        d = 4'b0001; #10;
        d = 4'b1010; #10;
        d = 4'b1111; #10;
        d = 4'b0101; #10;

        #20;
        $finish;

    end

endmodule
