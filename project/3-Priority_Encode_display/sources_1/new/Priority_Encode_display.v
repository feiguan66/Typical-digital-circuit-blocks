`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/26 15:31:02
// Design Name: 
// Module Name: Priority_Encode_display
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


module Priority_Encode_display(
input n_EN,input [6:0]Datain,
output wire [7:0]switch_led,a_to_g_left,a_to_g_right,
output wire [3:0]leftseg,rightseg,
output wire [2:0]B
    );
    wire [2:0]D;
    wire ET,flag;
    assign leftseg=4'b0001;
    assign rightseg=4'b0001;
    assign flag=1;
    Priority_Encode pc(.n_EN(n_EN),.Datain(Datain),.D(D),.ET(ET));
    display dlp(.x(D),.ET(ET),.switch_led(switch_led),
    .a_to_g_left(a_to_g_left),.a_to_g_right(a_to_g_right),.flag(flag),.B(B));
endmodule
