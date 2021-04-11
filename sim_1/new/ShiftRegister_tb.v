`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/09 21:33:25
// Design Name: 
// Module Name: ShiftRegister_tb
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


module ShiftRegister_tb(

    );
reg clk,rst,E;
wire D,C,B,A;

ShiftRegister Shift(
.A(A),
.B(B),
.C(C),
.D(D),
.E(E),
.clk(clk),
.rst(rst)
);
initial begin
    clk=1;
    forever #5 clk = ~clk;
end
initial begin
    rst=1;
    E=1'b0;
    #50 rst=0;
    #10 E = 1'b1;
    #10 E = 1'b0;
    #10 E = 1'b1;
    #10 E = 1'b0;
    #10 E = 1'b1;
end


endmodule
