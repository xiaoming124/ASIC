`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/26 21:00:49
// Design Name: 
// Module Name: Adder_tb
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


module Adder_tb(

    );
    
    reg [3:0] A;
    reg [3:0] B;
    reg Cin;
    
    wire [3:0] C;
    wire Cout;
    Adder Add1(
        .A(A),
        .B(B),
        .Cin(Cin),
        .C(C),
        .Cout(Cout)
    );
    
initial begin
    A = 4'd0;
    B = 4'd0;
    Cin = 1'd0;
    
    #50;
    A = 4'd4;
    B = 4'd5;
    Cin = 1'd1;
    
    #50;
    A = 4'd10;
    B = 4'd11;
    Cin = 1'd0;
    
end
    
endmodule
