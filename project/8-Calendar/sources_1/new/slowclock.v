`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/22 08:15:27
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
output reg outclk190,outclk12
    );
    parameter sys_clk='d100000000;
    parameter max190=sys_clk/(2*190)-1;
    parameter max12=sys_clk/(2*12)-1;
    reg [18:0]counter190;
    reg [21:0]counter12;
    always@(posedge clk) begin
    if(counter190==max190) begin
    counter190<=0;
    outclk190<=~outclk190;
    end
    else counter190<=counter190+1;
    if(counter12==max12) begin
    counter12<=0;
    outclk12<=~outclk12;
    end
    else counter12<=counter12+1;
    end
endmodule
