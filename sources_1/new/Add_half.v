`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/02 21:33:54
// Design Name: 
// Module Name: Add_half
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


module Add_half(
    output wire sum,
    output wire c_out,
    input wire a,
    input wire b
    );
    xor(sum, a, b);
    and(c_out, a, b);
endmodule
