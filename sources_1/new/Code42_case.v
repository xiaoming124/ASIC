`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/02 21:01:27
// Design Name: 
// Module Name: Code42_case
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


module Code42_case(
    input wire [3:0] I,
    input wire en,
    output wire [1:0] F
    );
    reg [1:0] t;
    assign F = en? t:2'bz;
    
    always@( I) begin
        case(I)
            1: t = 0;
            2: t = 1;
            4: t = 2;
            8: t = 3;
            default: t = 0;
        endcase
    
    end
endmodule
