`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/23 18:35:48
// Design Name: 
// Module Name: Voter_5_dip
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


module Voter_5_dip(
input [4:0]x,
output wire [7:0]a_to_g_left,a_to_g_right,
output wire [3:0]leftseg,rightseg
 );
wire [2:0]count;
wire resVoter;
Vote_5 V5(.Datain(x),.count(count),.resVoter(resVoter));
display dip(.x(count),.res(resVoter),
.a_to_g_left(a_to_g_left),.a_to_g_right(a_to_g_right),.leftseg(leftseg),.rightseg(rightseg));
endmodule
