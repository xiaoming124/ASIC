`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/02 21:43:09
// Design Name: 
// Module Name: Adder4_tb
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


module Adder4_tb(

    );
reg [3:0] A;
reg [3:0] B;
reg Cin;
wire [3:0] S;
wire Cout,Ovout;
initial begin
    A = 4'd0;
    B = 4'd0;
    Cin = 4'd0;
    
    #10;A = 4'd4;B = 4'd8;Cin = 1'b1;
    #10;A = 4'd7;B = 4'd8;Cin = 1'b1;
    #10;A = 4'd12;B = 4'd9;Cin = 1'b0;
    #10; $finish;

end    

Adder4 Adder4(
    .A(A),
    .B(B),
    .Cin(Cin),
    .S(S),
    .Cout(Cout),
    .Ovout(Ovout)
);
endmodule
