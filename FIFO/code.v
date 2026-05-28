module fifo(
    input clk,
    input rst,
    input wr_en,
    input rd_en,
    input [7:0] data_in,
    output reg [7:0] data_out,
    output reg full,
    output reg empty
);

reg [7:0] mem [3:0];

reg [1:0] wr_ptr;
reg [1:0] rd_ptr;
reg [2:0] count;

integer i;

initial
begin
    wr_ptr = 0;
    rd_ptr = 0;
    count  = 0;
    full   = 0;
    empty  = 1;
end

always @(posedge clk or posedge rst)
begin

    if(rst)
    begin

        wr_ptr <= 0;
        rd_ptr <= 0;
        count  <= 0;

        full  <= 0;
        empty <= 1;

        data_out <= 0;

        for(i=0; i<4; i=i+1)
            mem[i] <= 0;

    end

    else
    begin

        if(wr_en && !full)
        begin
            mem[wr_ptr] <= data_in;
            wr_ptr <= wr_ptr + 1;
            count <= count + 1;
        end

        if(rd_en && !empty)
        begin
            data_out <= mem[rd_ptr];
            rd_ptr <= rd_ptr + 1;
            count <= count - 1;
        end

        if(count == 4)
            full <= 1;
        else
            full <= 0;

        if(count == 0)
            empty <= 1;
        else
            empty <= 0;

    end

end

endmodule
