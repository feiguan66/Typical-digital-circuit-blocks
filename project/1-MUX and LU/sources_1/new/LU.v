`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/17 20:09:26
// Design Name: 
// Module Name: LU
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


module LU(
input wire a,b,input [1:0] S, output y
    );
    wire [3:0] I;
    First fir(.a(a),.b(b),.z(I[2:0]));
    assign I[3]=1'b0;
    MUX_4 mux(.I(I),.S(S),.Y(y));
endmodule
