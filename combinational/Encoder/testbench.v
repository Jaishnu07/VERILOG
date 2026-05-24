module encoder4x2_tb;

    reg [3:0] y;
    wire [1:0] a;

    encoder4x2 uut (
        .y(y),
        .a(a)
    );

    initial begin

        $monitor("Time=%0t | y=%b | a=%b",
                  $time, y, a);

        y=4'b0001; #10;
        y=4'b0010; #10;
        y=4'b0100; #10;
        y=4'b1000; #10;

        $finish;

    end

endmodule
