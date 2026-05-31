module traffic_light_tb;

    reg clk;
    wire [2:0] light;

    traffic_light uut(
        .clk(clk),
        .light(light)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $monitor("Time=%0t Light=%b", $time, light);

        #100;
        $finish;
    end

endmodule
