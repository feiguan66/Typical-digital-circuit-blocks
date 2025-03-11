`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/22 08:37:40
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
input [7:0]state,
output reg [7:0]a_to_g_left,a_to_g_right,
output reg [3:0]leftseg,rightseg
    );
    always@(state) begin
    a_to_g_left=8'b00000000;
    a_to_g_right=8'b00000000;
    leftseg=4'b0000;
    rightseg=4'b0000;
    case(state)
    8'b00000000:begin a_to_g_left=8'b11011010;leftseg=4'b1000;end
    8'b00000001:begin a_to_g_left=8'b11111100;leftseg=4'b0100;end
    8'b00000011:begin a_to_g_left=8'b11011010;leftseg=4'b0010;end
    8'b00000111:begin a_to_g_left=8'b11110011;leftseg=4'b0001;end
    8'b00001111:begin a_to_g_right=8'b01100000;rightseg=4'b1000;end
    8'b00011111:begin a_to_g_right=8'b11011011;rightseg=4'b0100;end
    8'b00111111:begin a_to_g_right=8'b11011010;rightseg=4'b0010;end
    8'b01111111:begin a_to_g_right=8'b11011010;rightseg=4'b0001;end
    endcase
    end
endmodule
