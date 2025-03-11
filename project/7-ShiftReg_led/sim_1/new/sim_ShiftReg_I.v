`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/22 04:52:52
// Design Name: 
// Module Name: sim_ShiftReg_I
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


module sim_ShiftReg_I( );
parameter CNT_SIZE = 4;
reg rst_n;
reg clk;
reg [CNT_SIZE-1 : 0]din;
wire [CNT_SIZE-1 : 0] cnt;
ShiftReg u_ShiftReg(.rst_n(rst_n),.clk(clk),.cnt(cnt));
initial begin
clk=0;
din=4'b0001;
rst_n=0;#30;
rst_n=1;
end
always begin
#20 clk=~clk;
end
endmodule
