`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/27 14:13:47
// Design Name: 
// Module Name: sim_Dff_p
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


module sim_Dff_p( );
reg clk,d;
wire q,n_q;
Dff_p u_Dff_p(.clk(clk),.d(d),.q(q),.n_q(n_q));
initial begin
clk=0;
d=0;
end
always
#20 clk=~clk;
always
#35 d=~d;
endmodule
