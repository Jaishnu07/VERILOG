module fifo_tb;

    reg clk, rst;
    reg wr_en, rd_en;
    reg [7:0] data_in;

    wire [7:0] data_out;
    wire full, empty;

    fifo uut(
        .clk(clk),
        .rst(rst),
        .wr_en(wr_en),
        .rd_en(rd_en),
        .data_in(data_in),
        .data_out(data_out),
        .full(full),
        .empty(empty)
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
        data_in = 0;

        rst = 0; #10;

        wr_en = 1;
        data_in = 8'd10; #10;

        data_in = 8'd20; #10;

        data_in = 8'd30; #10;

        wr_en = 0;

        rd_en = 1; #10;
        #10;
        #10;

        rd_en = 0;

        #20;
        $finish;

    end

endmodule
