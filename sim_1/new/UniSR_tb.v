`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/09 21:40:51
// Design Name: 
// Module Name: UniSR_tb
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


module UniSR_tb(

    );
    reg sl,sr,clk;
    reg[7:0] ParIn;
    reg[1:0] m;
    wire[7:0] ParOut;
    
    UniSR UniSR(
    .sl(sl),
    .sr(sr),
    .clk(clk),
    .ParIn(ParIn),
    .m(m),
    .ParOut(ParOut)
    );
    initial begin
        clk=0;
        forever #5 clk = ~clk;
    end
    initial begin
        m=2'd3;sr=1'b0;sl=1'b0;
        ParIn=8'b11111111;
        #20 m = 2'd2;
        #20 m = 2'd1;
        #20 m = 2'd0;
    end
endmodule
