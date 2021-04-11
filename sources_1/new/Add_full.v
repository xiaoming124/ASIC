`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/02 21:34:14
// Design Name: 
// Module Name: Add_full
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


module Add_full(
    output wire sum,
    output wire c_out,
    input wire a,
    input wire b,
    input wire c_in
    );
    wire w1,w2,w3;
    Add_half M1(w2,w1,a,b);
    Add_half M2(sum,w3,c_in,w2);
    
    or(c_out,w3,w1);
endmodule
