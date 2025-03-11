`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/27 14:48:33
// Design Name: 
// Module Name: sim_Dff_p_Sp
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


module sim_Dff_p_Sp( );
reg clk,d,Reset,Set;
wire q,n_q;
Dff_p_Sp u_Dff_p_Sp(.clk(clk),.d(d),.Reset(Reset),.Set(Set),.q(q),.n_q(n_q));
initial begin
clk=0;
d=0;
Reset=0;
Set=1;
#50 Reset=1;Set=0;
#60 Set=1;Reset=0;
#60 Reset=1;
end
always
#20 clk=~clk;
always
#50 d=~d;
endmodule
