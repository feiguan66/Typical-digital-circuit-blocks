`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/27 13:57:10
// Design Name: 
// Module Name: Dff_p_Sp
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


module Dff_p_Sp(clk,Reset,Set,d,q,n_q);
input clk,d,Reset,Set;
output reg q,n_q;
always @(posedge clk)
if(!Reset)
begin
q<=0;
n_q<=1;
end
else if(!Set)
begin
q<=1;
n_q<=0;
end
else
begin
q<=d;
n_q<=~d;
end
endmodule
