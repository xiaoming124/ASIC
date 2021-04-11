`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/02 21:09:12
// Design Name: 
// Module Name: Code42_if_tb
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


module Code42_if_tb(

    );
reg [3:0] I;
reg en;
wire [1:0] F;

Code42_if Code42_if(
.I(I),
.en(en),
.F(F)
);   
    initial begin
    I = 4'b0;
    en = 1'b0;
    
    #10; en = 1'b1;
    #10; I = 4'd1;
    #10; I = 4'd2;
    #10; I = 4'd4;
    #10; I = 4'd8;
    #10; I = 4'd7;
    #10; $finish;
end
endmodule
