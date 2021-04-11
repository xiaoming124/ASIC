`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/09 21:12:51
// Design Name: 
// Module Name: Flop_sync
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


module Flop_sync(
    reset,clk,din,qout
    );
    input reset,clk,din;
    output qout;
    reg qout;
    always@(posedge clk) begin
        if(reset) qout<=1'b0;
        else qout<=din;
    
    end
endmodule
