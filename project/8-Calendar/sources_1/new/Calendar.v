`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/22 08:46:44
// Design Name: 
// Module Name: Calendar
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


module Calendar(
input clk,sd,reset,
output wire [7:0]a_to_g_left,a_to_g_right,
output wire [3:0]leftseg,rightseg
    );
    wire outclk190,outclk12,clk_trl;
    wire [7:0]state;
    slowclock sck(.clk(clk),.outclk190(outclk190),.outclk12(outclk12));
    mux m(.outclk190(outclk190),.outclk12(outclk12),.sd(sd),.clk_trl(clk_trl));
    t_8 t(.clk_trl(clk_trl),.reset(reset),.state(state));
    display dip(.state(state),.a_to_g_left(a_to_g_left),
    .a_to_g_right(a_to_g_right),.leftseg(leftseg),.rightseg(rightseg));
endmodule
