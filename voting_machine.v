`timescale 1ns / 1ps

module voting_machine(
    input clk,
    input rst,
    input btn1,
    input btn2,
    input btn3,
    output reg [7:0] count1,
    output reg [7:0] count2,
    output reg [7:0] count3,
    output reg enable   // Indicates voting availability
);

always @(posedge clk or posedge rst)
begin
    if (rst)
    begin
        count1 <= 0;
        count2 <= 0;
        count3 <= 0;
        enable <= 1;   // Allow voting after reset
    end
    else if (enable)   // Only allow voting if enabled
    begin
        if (btn1)
        begin
            count1 <= count1 + 1;
            enable <= 0;
        end
        else if (btn2)
        begin
            count2 <= count2 + 1;
            enable <= 0;
        end
        else if (btn3)
        begin
            count3 <= count3 + 1;
            enable <= 0;
        end
    end
end

endmodule
