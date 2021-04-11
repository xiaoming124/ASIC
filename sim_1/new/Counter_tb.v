`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/26 21:36:41
// Design Name: 
// Module Name: Counter_tb
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


module Counter_tb(

    );
    
reg clk;
reg rst_n;

wire [3:0] cnt;

Counter counter(
    .clk(clk),
    .rst_n(rst_n),
    
    .cnt(cnt)
);

initial begin
    clk = 1;
    forever #50 clk = ~clk;
end

initial begin
    rst_n = 1;
    #200 rst_n = 0;
    #300 rst_n = 1;
    #1000;
    #200 rst_n = 0;
    #300 rst_n = 1;
    
end
    
endmodule
