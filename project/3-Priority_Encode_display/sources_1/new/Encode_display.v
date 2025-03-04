`timescale 1ns / 1ps
module Encode_display(
input n_EN,input [6:0]Datain,
output wire [7:0]switch_led,a_to_g_left,a_to_g_right,
output wire [3:0]leftseg,rightseg,
output wire [2:0]B
    );
    wire [2:0]D;
    wire ET,flag;
    assign leftseg=4'b0001;
    assign rightseg=4'b0001;
    assign flag=0;
    Encode ec(.n_EN(n_EN),.Datain(Datain),.D(D),.ET(ET));
    display dlp(.x(D),.ET(ET),.flag(flag),.switch_led(switch_led),
    .a_to_g_left(a_to_g_left),.a_to_g_right(a_to_g_right),.B(B));
endmodule