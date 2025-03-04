`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/24 20:50:34
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
input ET,
input flag,
output reg [7:0]switch_led,a_to_g_left,a_to_g_right,
output reg [2:0]B
    );
    always@(*) begin
    case(x)
    0:begin switch_led=8'b00000001;a_to_g_left=8'b11111100;end
    1:begin switch_led=8'b00000010;a_to_g_left=8'b01100000;end
    2:begin switch_led=8'b00000100;a_to_g_left=8'b11011010;end
    3:begin switch_led=8'b00001000;a_to_g_left=8'b11110010;end
    4:begin switch_led=8'b00010000;a_to_g_left=8'b01100110;end
    5:begin switch_led=8'b00100000;a_to_g_left=8'b10110110;end
    6:begin switch_led=8'b01000000;a_to_g_left=8'b10111110;end
    7:begin switch_led=8'b10000000;a_to_g_left=8'b11100000;end
    endcase
    case(ET)
    0:a_to_g_right=8'b10011110;
    1:a_to_g_right=8'b00000001;
    endcase
    if(flag)
    begin
    case(x)
    0:B=3'b000;
    1:B=3'b001;
    2:B=3'b010;
    3:B=3'b011;
    4:B=3'b100;
    5:B=3'b101;
    6:B=3'b110;
    7:B=3'b111;
    endcase
    end
    end
endmodule
