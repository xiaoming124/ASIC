`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/09 20:40:19
// Design Name: 
// Module Name: ALU8_tb
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


module ALU8_tb(

    );
reg [7:0] left,right;
reg [1:0] mode;
wire [7:0] ALUout;

initial begin
    left = 8'd0;
    right = 8'd0;
    mode = 2'd0;
    
    #10;left = 8'd10;right = 8'd22;mode = 2'd0;
    #10;left = 8'd20;right = 8'd12;mode = 2'd1;
    #10;left = 8'b0110_0101;right = 8'b0101_1001;mode = 2'd2;
    #10;left = 8'b0110_1001;right = 8'b0101_1011;mode = 2'd3;
    #10;$finish;

end

ALU8 ALU8(
.left(left),
.right(right),
.mode(mode),
.ALUout(ALUout)
);
endmodule
