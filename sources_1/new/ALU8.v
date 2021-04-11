`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/09 20:32:08
// Design Name: 
// Module Name: ALU8
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


module ALU8(
    input [7:0] left,right,
    input [1:0] mode,
    output reg [7:0] ALUout
    );
    always@(left,right,mode)begin
        case(mode)
            0:ALUout = left+right;
            1:ALUout = left-right;
            2:ALUout = left&right;
            3:ALUout = left|right;
            default:ALUout = 8'bx;
        endcase
    
    end
endmodule
