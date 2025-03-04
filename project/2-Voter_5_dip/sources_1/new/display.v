`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/19 20:38:21
// Design Name: 
// Module Name: display
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


module display(
input [2:0]x,
input res,
output reg [7:0]a_to_g_left,a_to_g_right,
output reg [3:0]leftseg,rightseg
    );
    always@(*) begin
    case(x)
    0:a_to_g_left=8'b11111100;
    1:a_to_g_left=8'b01100000;
    2:a_to_g_left=8'b11011010;
    3:a_to_g_left=8'b11110010;
    4:a_to_g_left=8'b01100110;
    5:a_to_g_left=8'b10110110;
    default
    a_to_g_left=8'b00000001;
    endcase
    case(res)
    0:a_to_g_right=8'b10001110;
    1:a_to_g_right=8'b11001110;
    endcase
    leftseg=4'b0001;
    rightseg=4'b0001;
    end
endmodule
