`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/27 13:39:19
// Design Name: 
// Module Name: Dff_p
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


module Dff_p(clk,d,q,n_q);
input clk,d;
output reg q,n_q;
always @(posedge clk)
begin
  q<=d;
  n_q<=~d;
end
endmodule
