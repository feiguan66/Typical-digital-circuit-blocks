`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/27 15:33:09
// Design Name: 
// Module Name: Dff_p_Ap_32
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


module Dff_p_Ap_32(input clk,n_reset,n_set,
input [31:0]Datain,
output reg [31:0]Dataout);
always @(negedge clk or negedge n_reset or negedge n_set)
if(!n_reset)
Dataout<=0;
else if(!n_set)
Dataout<=1;
else
begin
Dataout<=Datain;
end
endmodule
