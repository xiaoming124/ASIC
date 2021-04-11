`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/02 21:42:50
// Design Name: 
// Module Name: Adder4
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


module Adder4(
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] S,
    output Cout, Ovout
    );
    assign {Cout,S} = A+B+Cin;
    assign Ovout = (A[3]==B[3]) && (S[3]!=A[3]);
endmodule
