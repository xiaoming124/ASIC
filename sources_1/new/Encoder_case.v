`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/26 21:34:00
// Design Name: 
// Module Name: Encoder_ifelse
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


module Encoder_case(
input [7:0] Data,

output reg [2:0] Code
    );
    
always @(*) 
begin
    case(Data)
        8'b0000_0001: Code = 0;
        8'b0000_0010: Code = 1;
        8'b0000_0100: Code = 2;
        8'b0000_1000: Code = 3;
        8'b0001_0000: Code = 4;
        8'b0010_0000: Code = 5;
        8'b0100_0000: Code = 6;
        8'b1000_0000: Code = 7;
        default: Code = 3'bx;
    endcase
end

endmodule
