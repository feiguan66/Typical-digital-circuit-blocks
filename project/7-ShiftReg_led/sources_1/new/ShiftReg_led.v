`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/22 05:38:16
// Design Name: 
// Module Name: ShiftReg_led
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


module ShiftReg_led(
input clk,rst,sd,sw,EN,
output wire [7:0]a_to_g_left,a_to_g_right,
output wire [3:0]leftseg,rightseg
    );
    wire outclk1,outclk12,clk_trl;
    slowclock sck(.EN(EN),.clk(clk),.outclk1(outclk1),.outclk12(outclk12));
    mux mx(.outclk1(outclk1),.outclk12(outclk12),.sd(sd),.clk_trl(clk_trl));
    ShiftReg_16 SR(.clk_trl(clk_trl),.rst(rst),.sw(sw),.a_to_g_left(a_to_g_left),
    .a_to_g_right(a_to_g_right),.leftseg(leftseg),.rightseg(rightseg));
endmodule
