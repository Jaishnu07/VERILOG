module vending_machine_tb;

    reg clk;
    reg [1:0] coin;
    wire dispense;

    vending_machine uut(
        .clk(clk),
        .coin(coin),
        .dispense(dispense)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin

    
        coin = 2'b01; #10;
        coin = 2'b01; #10;


        coin = 2'b10; #10;


        coin = 2'b01; #10;
        coin = 2'b10; #10;

        #20;
        $finish;

    end

endmodule
