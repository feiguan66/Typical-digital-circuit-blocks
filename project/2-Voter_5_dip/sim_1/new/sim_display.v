`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/19 20:54:45
// Design Name: 
// Module Name: sim_display
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


module sim_display( );
reg [2:0]x;
reg res;
wire [7:0]a_to_g_left,a_to_g_right;
wire [3:0]leftseg,rightseg;
display u_dip(.x(x),.res(res),
.a_to_g_left(a_to_g_left),.a_to_g_right(a_to_g_right),
.leftseg(leftseg),.rightseg(rightseg));
always begin
x=0;#100;
x=1;#100;
x=2;#100;
x=3;#100;
x=4;#100;
x=5;#100;
end
always begin
res=0;#300;
res=1;#300;
end
endmodule
