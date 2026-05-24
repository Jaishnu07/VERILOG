module decoder2x4_tb;

    reg [1:0] a;
    wire [3:0] y;

    decoder2x4 uut (
        .a(a),
        .y(y)
    );

    initial begin

        $monitor("Time=%0t | a=%b | y=%b",
                  $time, a, y);

        a=2'b00; #10;
        a=2'b01; #10;
        a=2'b10; #10;
        a=2'b11; #10;

        $finish;

    end

endmodule
