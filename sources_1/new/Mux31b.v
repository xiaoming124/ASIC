`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/02 20:52:17
// Design Name: 
// Module Name: Mux31b
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


module Mux31b(
    input wire a,
    input wire b,
    input wire c,
    input wire[1:0] sel,
    output reg q

    );
    
    always@(*) begin
        if(sel[1] == 1) begin
            q = a;
        end
        else if(sel[0] == 1) begin
            q = b;
        
        end
        else begin
            q = c;
        end
     end
endmodule
