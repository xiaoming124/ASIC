`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/09 20:58:21
// Design Name: 
// Module Name: Interconnections_tb
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


module Interconnections_tb(

    );
reg [7:0] Inbus;
reg [7:0] Aside;
reg [7:0] Bside;
reg select_source;
reg [1:0] Function;
wire [7:0] Outbus;

Interconnections Interconnection(
.Inbus(Inbus),
.Aside(Aside),
.Bside(Bside),
.select_source(select_source),
.Function(Function),
.Outbus(Outbus)
);

initial begin
    Inbus=8'd56;Aside=8'd5;Bside=8'd20;
    select_source = 1'b0;Function = 2'd0;
    #10;Function=2'd1;
    #10;Function=2'd2;
    #10;Function=2'd3;
    #10;select_source = 1'b1;
    #10;Function=2'd2;
    #10;Function=2'd1;
    #10;Function=2'd0;
    #10;$finish;
end 
endmodule
