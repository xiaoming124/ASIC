`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/26 21:34:00
// Design Name: 
// Module Name: Counter
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


module Counter(
input clk,
input rst_n,

output reg[3:0] cnt
    );
    
always @ (posedge clk or negedge rst_n)
begin
    if(!rst_n) cnt <= 4'd0;
    else cnt <= cnt+1;
end


endmodule