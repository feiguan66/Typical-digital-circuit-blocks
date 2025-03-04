`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/12 14:22:24
// Design Name: 
// Module Name: sim4First
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


module sim4First( );
 reg a;
 reg b;
 wire [2:0] z;
 First uut( .a(a), .b(b), .z(z) );
 always begin
 a = 0; b = 0; #100;
 a = 0; b = 1; #100;
 a = 1; b = 0; #100;
 a = 1; b = 1; #100;
 end
endmodule
