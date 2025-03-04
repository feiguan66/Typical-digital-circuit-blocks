`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/17 20:24:20
// Design Name: 
// Module Name: sim_LU
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


module sim_LU( );
reg a,b;
reg [1:0]S;
wire Y;
 always 
 begin
 a = 0; b = 0; #100;
 a = 0; b = 1; #100;
 a = 1; b = 0; #100;
 a = 1; b = 1; #100;
 end
 always 
 begin
 S=00;#400;
 S=01;#400;
 S=10;#400;
 S=11;#400;
 end
 LU u_LU(.a(a),.b(b),.S(S),.y(Y));
endmodule
