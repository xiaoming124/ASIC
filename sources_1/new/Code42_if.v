`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/02 21:08:56
// Design Name: 
// Module Name: Code42_if
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


module Code42_if(
    input wire [3:0] I,
    input wire en,
    output wire [1:0] F
    );
    reg [1:0] t;
    assign F = en? t:2'bz;
    
    always @(I) begin
        if(I[3]) begin
            t = 2'b11;
        end
        else if(I[2]) begin
            t = 2'b10;
        end
        else if(I[1]) begin
            t = 2'b01;
        end
        else  begin
            t = 2'b00;
        end
    end
endmodule
