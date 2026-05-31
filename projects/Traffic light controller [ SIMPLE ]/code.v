module traffic_light(
    input clk,
    output reg [2:0] light
);

reg [1:0] state;

parameter GREEN  = 2'b00,
          YELLOW = 2'b01,
          RED    = 2'b10;

initial begin
    state = GREEN;
end

always @(posedge clk)
begin
    case(state)

        GREEN:
        begin
            light <= 3'b100;
            state <= YELLOW;
        end

        YELLOW:
        begin
            light <= 3'b010;
            state <= RED;
        end

        RED:
        begin
            light <= 3'b001;
            state <= GREEN;
        end

        default:
        begin
            light <= 3'b100;
            state <= GREEN;
        end

    endcase
end

endmodule
