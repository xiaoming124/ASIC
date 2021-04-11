`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/09 21:23:52
// Design Name: 
// Module Name: Counter
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


module Counter2(
    rst,clk,count
    );
    input rst,clk;
    output [3:0] count;
    reg [3:0] count;
    always@(negedge clk) begin
        if(rst) count<=4'b0000;
        else count<=count+1;
    end
endmodule
