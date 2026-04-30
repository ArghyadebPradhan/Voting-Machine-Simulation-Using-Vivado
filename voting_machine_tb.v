module voting_machine_tb;

reg clk;
reg rst;
reg btn1, btn2, btn3;

wire [7:0] count1, count2, count3;
wire enable;

voting_machine uut (
    .clk(clk),
    .rst(rst),
    .btn1(btn1),
    .btn2(btn2),
    .btn3(btn3),
    .count1(count1),
    .count2(count2),
    .count3(count3),
    .enable(enable)
);

// Clock generation
always #5 clk = ~clk;

initial
begin
    clk = 0;
    rst = 1;
    btn1 = 0;
    btn2 = 0;
    btn3 = 0;

    #10 rst = 0;

    // First vote → accepted
    #10 btn1 = 1; #10 btn1 = 0;

    // Second vote attempt → ignored
    #10 btn2 = 1; #10 btn2 = 0;

    // Third vote attempt → ignored
    #10 btn3 = 1; #10 btn3 = 0;

    #50 $stop;
end

endmodule
