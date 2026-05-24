module comparator_tb;

    reg a, b;
    wire greater, less, equal;

    comparator uut(
        .a(a),
        .b(b),
        .greater(greater),
        .less(less),
        .equal(equal)
    );

    initial begin

        $monitor("Time=%0t | a=%b b=%b | greater=%b less=%b equal=%b",
                  $time, a, b, greater, less, equal);

        a=0; b=0; #10;
        a=0; b=1; #10;
        a=1; b=0; #10;
        a=1; b=1; #10;

        $finish;

    end

endmodule
