module elevator_tb;

    reg clk;
    reg [1:0] request;
    wire [1:0] floor;

    elevator uut(
        .clk(clk),
        .request(request),
        .floor(floor)
    );

    initial
    begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial
    begin

        request = 2'b10;   
        #40;

        request = 2'b01;   
        #40;

        request = 2'b11;  
        #40;

        $finish;

    end

endmodule
