`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/02 21:36:47
// Design Name: 
// Module Name: Add_full_tb
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


module Add_full_tb(

    );
reg a;
reg b;
reg c_in;
wire sum;
wire c_out;

Add_full Add_full(
.a(a),
.b(b),
.c_in(c_in),
.sum(sum),
.c_out(c_out)

);   

integer i,j,k;
initial begin
    a = 1'b1;
    b = 1'b1;
    c_in = 1'b1;
    for(i = 0; i < 2; i = i + 1) begin
        a = ~a;
        for(j = 0; j < 2; j = j + 1) begin
            b = ~b;
            for(k = 0; k < 2; k = k + 1) begin
                c_in = ~c_in;
                #10;
            end
        end
    end
    $finish;
end     

endmodule
