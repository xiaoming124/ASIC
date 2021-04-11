`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/02 21:25:50
// Design Name: 
// Module Name: Fulladder
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


module Fulladder(
    input wire a,
    input wire b,
    input wire cin,
    output wire sum,
    output wire cout

    );
    assign sum = a^ b ^ cin;
    assign cout = (a&b)|(a&cin)|(b&cin);
    
endmodule
