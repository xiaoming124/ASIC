`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/09 21:24:26
// Design Name: 
// Module Name: UniSR
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


module UniSR(
    input sl,sr,clk,input[7:0] ParIn,
    input[1:0] m,
    output reg [7:0] ParOut
    );
    always@(posedge clk) begin
        case(m)
            0:ParOut<=ParOut;
            1:ParOut<={sl,ParOut[7:1]};
            2:ParOut<={ParOut[6:0],sr};
            3:ParOut<=ParIn;
            default:ParOut<=8'bX;
        endcase
    end
endmodule
