`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/09 21:25:41
// Design Name: 
// Module Name: Counter2_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Counter2_tb(

    );
    reg rst,clk;
    wire[3:0]count;
    Counter2 counter(
    .rst(rst),
    .clk(clk),
    .count(count)
    );
    initial begin
        rst = 1'b0;
        clk=1'b0;
        
        #10;rst = 1'b1;
        #10;rst = 1'b0;
        #10;rst = 1'b1;
        #10;rst = 1'b0;
    end
    always #5 clk = ~clk;
endmodule
