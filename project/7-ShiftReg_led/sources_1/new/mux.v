`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/22 05:09:03
// Design Name: 
// Module Name: mux
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


module mux(
input outclk1,outclk12,sd,
output reg clk_trl
    );
    always@(*) begin
    if(sd)
    clk_trl=outclk1;
    else
    clk_trl=outclk12;
    end
endmodule
