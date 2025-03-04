`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/26 13:40:11
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
reg ET;
reg flag;
wire [7:0]switch_led,a_to_g_left,a_to_g_right;
wire [3:0]leftseg,rightseg;
wire [2:0]B;
display u_display(.x(x),.ET(ET),.flag(flag),.switch_led(switch_led),
.a_to_g_left(a_to_g_left),.a_to_g_right(a_to_g_right),.B(B));
always begin
for(integer i=0;i<8;i=i+1)
begin
x=i;#100;
end
end
always begin
ET=0;#800;
ET=1;#800;
end
always begin
flag=0;#1600;
flag=1;#1600;
end
endmodule
