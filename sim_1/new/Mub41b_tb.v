`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/02 20:32:17
// Design Name: 
// Module Name: Mub41b_tb
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


module Mub41b_tb(

    );
    
reg a;
reg b;
reg c;
reg d;
reg  [1:0] sel;
wire q;

Mux41b Mux41b(
.a(a),
.b(b),
.c(c),
.d(d),
.sel(sel),
.q(q)
);

initial begin
    sel = 2'd0;
    a = 1'b1;
    b = 1'b0;
    c = 1'b1;
    d = 1'b0;
    
    #10; sel = 2'd1;
    #10; sel = 2'd2;
    #10; sel = 2'd3;
    #10; sel = 2'd0;
    #10; $finish;
end
    
    
    
endmodule
