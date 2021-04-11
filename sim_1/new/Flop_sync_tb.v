`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/09 21:13:25
// Design Name: 
// Module Name: Flop_sync_tb
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


module Flop_sync_tb(

    );
reg reset,clk,din;
wire qout;
initial begin
    reset = 1'b0;
    clk = 1'b0;
    din = 1'b1;
    
    #10; reset = 1'b1;
    #10; reset = 1'b0;
    #10; din = 1'b0;
    #10; $finish;
end    
    
Flop_sync Flop1(
.reset(reset),
.clk(clk),
.din(din),
.qout(qout)
);
always #5 clk = ~clk;
endmodule
