module ram8x8_tb;

    reg clk;
    reg rst;
    reg wr_en;
    reg rd_en;

    reg [2:0] addr;
    reg [7:0] data_in;

    wire [7:0] data_out;

    ram8x8 uut(
        .clk(clk),
        .rst(rst),
        .wr_en(wr_en),
        .rd_en(rd_en),
        .addr(addr),
        .data_in(data_in),
        .data_out(data_out)
    );

    initial
    begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial
    begin

        rst = 1;
        wr_en = 0;
        rd_en = 0;
        addr = 0;
        data_in = 0;

        #10;
        rst = 0;

        wr_en = 1;

        addr = 3'b000;
        data_in = 8'hAA;
        #10;

        addr = 3'b001;
        data_in = 8'h55;
        #10;

        wr_en = 0;

        rd_en = 1;

        addr = 3'b000;
        #10;

        addr = 3'b001;
        #10;

        rd_en = 0;

        #20;
        $finish;

    end

endmodule
