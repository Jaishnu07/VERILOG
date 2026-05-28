module ram8x8(
    input clk,
    input rst,
    input wr_en,
    input rd_en,

    input [2:0] addr,
    input [7:0] data_in,

    output reg [7:0] data_out
);

    reg [7:0] mem [7:0];

    integer i;

    always @(posedge clk or posedge rst)
    begin

        if(rst)
        begin

            data_out <= 0;

            for(i = 0; i < 8; i = i + 1)
            begin
                mem[i] <= 8'b0;
            end

        end

        else
        begin

            if(wr_en)
            begin
                mem[addr] <= data_in;
            end

            if(rd_en)
            begin
                data_out <= mem[addr];
            end

        end

    end

endmodule
