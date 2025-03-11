`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/22 07:43:46
// Design Name: 
// Module Name: sim_t_11001
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


module sim_t_11001( );
reg reset,clk,x;
wire z;
t_11001 u_t_11001(.reset(reset),.clk(clk),.x(x),.z(z));
initial begin
x=0;
clk=0;
reset=1;
#50 reset=0;
#40 reset=1;
#40 reset=0;
end
always begin
#20 clk=~clk;
end
always begin
#130;x=1;#80;
x=0;#80;
x=1;#40;
end
endmodule
