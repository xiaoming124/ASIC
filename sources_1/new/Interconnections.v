`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/09 20:58:00
// Design Name: 
// Module Name: Interconnections
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


module Interconnections(
    input wire [7:0] Inbus,
    input wire [7:0] Aside,
    input wire [7:0] Bside,
    input wire select_source,
    input wire [1:0] Function,
    
    output wire [7:0] Outbus
    );
    wire [7:0] ABinput;
    ALU8 U1(.left(Inbus),.right(ABinput),.mode(Function),.ALUout(Outbus));
    Mux8 U2(.sel(select_source),.data1(Aside),.data0(Bside),.bus1(ABinput));
endmodule
