`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/22 03:12:07
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
input wire [4:0]step,
output reg [7:0]a_to_g_left,a_to_g_right,
output reg [3:0]leftseg,rightseg
    );
    always@(step) begin
    a_to_g_left=8'b00000000;
    a_to_g_right=8'b00000000;
    leftseg=4'b0000;
    rightseg=4'b0000;
    case(step)
    0:begin a_to_g_left=8'b10000000;leftseg=4'b1000;end
    1:begin a_to_g_left=8'b10000000;leftseg=4'b0100;end
    2:begin a_to_g_left=8'b10000000;leftseg=4'b0010;end
    3:begin a_to_g_left=8'b10000000;leftseg=4'b0001;end
    4:begin a_to_g_right=8'b10000000;rightseg=4'b1000;end
    5:begin a_to_g_right=8'b10000000;rightseg=4'b0100;end
    6:begin a_to_g_right=8'b10000000;rightseg=4'b0010;end
    7:begin a_to_g_right=8'b10000000;rightseg=4'b0001;end
    8:begin a_to_g_right=8'b01000000;rightseg=4'b0001;end
    9:begin a_to_g_right=8'b00100000;rightseg=4'b0001;end
    10:begin a_to_g_right=8'b00010000;rightseg=4'b0001;end
    11:begin a_to_g_right=8'b00010000;rightseg=4'b0010;end
    12:begin a_to_g_right=8'b00010000;rightseg=4'b0100;end
    13:begin a_to_g_right=8'b00010000;rightseg=4'b1000;end
    14:begin a_to_g_left=8'b00010000;leftseg=4'b0001;end
    15:begin a_to_g_left=8'b00010000;leftseg=4'b0010;end
    16:begin a_to_g_left=8'b00010000;leftseg=4'b0100;end
    17:begin a_to_g_left=8'b00010000;leftseg=4'b1000;end
    18:begin a_to_g_left=8'b00001000;leftseg=4'b1000;end
    19:begin a_to_g_left=8'b00000100;leftseg=4'b1000;end
    endcase
    end
endmodule
