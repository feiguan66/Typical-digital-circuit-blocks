`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/26 15:56:34
// Design Name: 
// Module Name: sim_Encode_display
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


module sim_Encode_display( );
reg n_EN;
reg [6:0]Datain;
wire [7:0]switch_led,a_to_g_left,a_to_g_right;
wire [3:0]leftseg,rightseg;
Encode_display u_Encode_display(.n_EN(n_EN),.Datain(Datain),
.switch_led(switch_led),
.a_to_g_left(a_to_g_left),.a_to_g_right(a_to_g_right),.
leftseg(leftseg),.rightseg(rightseg));
initial
Datain=8'b11111111;
always begin
for(integer i=0;i<8;i=i+1)
begin
Datain[i]=0;#100;
Datain[i]=1;#100;
end
end
always begin
n_EN=0;#1600;
n_EN=1;#1600;
end
endmodule
