`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/17 19:37:07
// Design Name: 
// Module Name: MUX_4
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


module MUX_4(
input [3:0] I,input [1:0] S,output Y
    );
    wire m,n;
    MUX_2 M1(.a(I[0]),.b(I[1]),.c(S[0]),.y(m));
    MUX_2 M2(.a(I[2]),.b(I[3]),.c(S[0]),.y(n));
    MUX_2 M3(.a(m),.b(n),.c(S[1]),.y(Y));
endmodule

