`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/22 04:41:26
// Design Name: 
// Module Name: ShiftReg
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


module ShiftReg(rst_n, clk, cnt ); 
parameter CNT_SIZE = 4;
input rst_n;
input clk;
output [CNT_SIZE-1 : 0] cnt;
reg [CNT_SIZE-1 : 0] cnt;
always@(posedge clk)
 if(!rst_n)
 cnt <= 4'b0001;
 else
 cnt <= {cnt[0],cnt[CNT_SIZE-1 : 1]};
endmodule
