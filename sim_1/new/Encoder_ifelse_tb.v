`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/26 21:46:29
// Design Name: 
// Module Name: Encoder_ifelse_tb
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


module Encoder_ifelse_tb(

    );
    
reg [7:0] Data;
wire [2:0] Code;

Encoder_ifelse Ifelse(
    .Data(Data),
    .Code(Code)

);

initial begin
    Data = 8'b0000_0000;
    #10; Data = 8'b0000_0001;
    #10; Data = 8'b0000_0010;
    #10; Data = 8'b0000_0100;
    #10; Data = 8'b0000_1000;
    #10; Data = 8'b0001_0000;
    #10; Data = 8'b0010_0000;
    #10; Data = 8'b0100_0000;
    #10; Data = 8'b1000_0000;
    #10; Data = 8'b0000_0000;
    
    #10; Data = 8'b1000_0001;
    #10; $finish;
end
    
endmodule
