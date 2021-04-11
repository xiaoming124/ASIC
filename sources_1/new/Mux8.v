`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/09 20:59:56
// Design Name: 
// Module Name: Mux8
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


module Mux8(
    input wire sel,
    input wire [7:0] data0,
    input wire [7:0] data1,
    output wire [7:0] bus1
    );
    assign bus1 = sel?data1:data0;
endmodule
