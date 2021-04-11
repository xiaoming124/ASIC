`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/09 21:13:07
// Design Name: 
// Module Name: Flop_async
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


module Flop_async(
    reset,clk,din,qout
    );
    input reset,clk,din;
    output qout;
    reg qout;
    always@(posedge clk or posedge reset) begin
        if(reset) qout<=1'b0;
        else qout<=din;
    
    end
endmodule
