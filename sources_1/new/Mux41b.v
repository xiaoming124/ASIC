`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/02 20:31:50
// Design Name: 
// Module Name: Mux41b
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


module Mux41b(
    input wire a,
    input wire b,
    input wire c,
    input wire d,
    input wire [1:0] sel,
    
    output reg q

    );
    
    always@(*)
    begin
        case(sel)
            2'd0: q = a;
            2'd1: q = b;
            2'd2: q = c;
            default: q = d;
        endcase
    
    
    end
    
endmodule
