module vending_machine(
    input clk,
    input [1:0] coin,
    output reg dispense
);

reg state;

parameter S0 = 1'b0,
          S5 = 1'b1;

initial begin
    state = S0;
    dispense = 0;
end

always @(posedge clk)
begin

    dispense <= 0;

    case(state)

        S0:
        begin
            if(coin == 2'b01)     
                state <= S5;

            else if(coin == 2'b10) 
            begin
                dispense <= 1;
                state <= S0;
            end
        end

        S5:
        begin
            if(coin == 2'b01)      
            begin
                dispense <= 1;
                state <= S0;
            end

            else if(coin == 2'b10) 
            begin
                dispense <= 1;
                state <= S0;
            end
        end

    endcase

end

endmodule
