`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/02 20:52:31
// Design Name: 
// Module Name: Mux31b_tb
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


module Mux31b_tb(

    );
    
reg a;
reg b;
reg c;
reg [1:0] sel;
wire q;

Mux31b Mux31b(
.a(a),
.b(b),
.c(c),
.sel(sel),
.q(q)

);
initial begin
    sel = 2'd0;
    a = 1'b1;
    b = 1'b0;
    c = 1'b1;
    
    #10; sel = 2'b01;
    #10; sel = 2'b10;
    #10; sel = 2'b11;
    #10; sel = 2'b00;
    #10; $finish;
end
endmodule
