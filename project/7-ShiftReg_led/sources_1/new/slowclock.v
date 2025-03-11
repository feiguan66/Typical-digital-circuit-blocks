`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/22 04:56:47
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
input clk,EN,
output reg outclk1,outclk12
    );
    parameter sys_clk='d100000000;
    parameter max1=sys_clk/(2*1)-1;
    parameter max12=sys_clk/(2*12)-1;
    reg [25:0]counter1;
    reg [21:0]counter12;
    always@(posedge clk) begin
    if(EN) begin
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
    end
    end
endmodule
