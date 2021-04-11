`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/02 21:26:04
// Design Name: 
// Module Name: Fulladder_tb
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


module Fulladder_tb(

    );
reg a;
reg b;
reg cin;
wire sum;
wire cout;

Fulladder Fulladder(
.a(a),
.b(b),
.cin(cin),
.sum(sum),
.cout(cout)

);   

integer i,j,k;
initial begin
    a = 1'b1;
    b = 1'b1;
    cin = 1'b1;
    for(i = 0; i < 2; i = i + 1) begin
        a = ~a;
        for(j = 0; j < 2; j = j + 1) begin
            b = ~b;
            for(k = 0; k < 2; k = k + 1) begin
                cin = ~cin;
                #10;
            end
        end
    end
    $finish;
end 
endmodule
