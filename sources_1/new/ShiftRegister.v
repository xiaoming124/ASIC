`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/09 21:24:07
// Design Name: 
// Module Name: ShiftRegister
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


module ShiftRegister(
    A,B,C,D,E,clk,rst
    );
    input E,clk,rst;
    output A,B,C,D;
    reg A,B,C,D;
    always@(posedge clk or posedge rst) begin
        if(rst)begin
            A<=0;B<=0;C<=0;D<=0;
        end
        else begin
            A<=B;B<=C;C<=D;D<=E;
        end
    
    end
endmodule
