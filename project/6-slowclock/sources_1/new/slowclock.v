`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/22 02:00:37
// Design Name: 
// Module Name: slowclock
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


module slowclock(
input clk,
input [3:0]choose,
output wire [7:0]a_to_g_left,a_to_g_right,
output wire [3:0]leftseg,rightseg,
output reg outclk1,outclk12,outclk48,outclk190
    );
    parameter sys_clk='d100000000;
    parameter max1=sys_clk/(2*1)-1;
    parameter max12=sys_clk/(2*12)-1;
    parameter max48=sys_clk/(2*48)-1;
    parameter max190=sys_clk/(2*190)-1;
    reg [25:0]counter1;
    reg [21:0]counter12;
    reg [19:0]counter48;
    reg [18:0]counter190;
    reg [4:0]step;
    always@(posedge clk)
    begin
    if(counter1==max1) begin
    counter1<=0;
    outclk1<=~outclk1;
    end
    else counter1<=counter1+1;
    
    if(counter12==max12) begin
    counter12<=0;
    outclk12<=~outclk12;
    end
    else counter12<=counter12+1;
    
    if(counter48==max48) begin
    counter48<=0;
    outclk48<=~outclk48;
    end
    else counter48<=counter48+1;
    
    if(counter190==max190) begin
    counter190<=0;
    outclk190<=~outclk190;
    end
    else counter190<=counter190+1;
    
    case(choose)
    4'b0001:begin
    if(counter1==max1)
    if(step==20) step<=0;
    else step<=step+1;
    end
    4'b0010:begin
    if(counter12==max12)
    if(step==20) step<=0;
    else step<=step+1;
    end
    4'b0100:begin
    if(counter48==max48)
    if(step==20) step<=0;
    else step<=step+1;
    end
    4'b1000:begin
    if(counter190==max190)
    if(step==20) step<=0;
    else step<=step+1;
    end
    endcase
    end
    display dip(.step(step),.a_to_g_left(a_to_g_left),
    .a_to_g_right(a_to_g_right),.leftseg(leftseg),.rightseg(rightseg));
endmodule
