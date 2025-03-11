`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/22 04:50:41
// Design Name: 
// Module Name: ShiftReg_I
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


module ShiftReg_I(rst_n,clk,cnt,din);
parameter CNT_SIZE = 4;
input rst_n;
input clk;
input [CNT_SIZE-1 : 0]din;
output reg [CNT_SIZE-1 : 0] cnt;
always@(posedge clk)
 if(!rst_n)
 cnt <= din;
 else
 cnt <= {cnt[0],cnt[CNT_SIZE-1 : 1]};
endmodule
