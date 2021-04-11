`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/26 21:09:07
// Design Name: 
// Module Name: Multiplexer_tb
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


module Multiplexer_tb(

    );
    
reg a;
reg b;
reg s;

wire w;

Multiplexer Multiplexer1(
    .a(a),
    .b(b),
    .s(s),
    
    .w(w)

);

initial begin
    a = 1'd0;
    b = 1'd0;
    s = 1'd0;
    
    #100;
    a = 1'd1;
    b = 1'd1;
    s = 1'd1;
    
    #100;
    a = 1'd1;
    b = 1'd1;
    s = 1'd0;


end

endmodule
