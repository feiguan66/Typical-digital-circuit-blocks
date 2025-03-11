`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/22 05:12:30
// Design Name: 
// Module Name: ShiftReg_16
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


module ShiftReg_16(
input clk_trl,rst,sw,
output reg [7:0]a_to_g_left,a_to_g_right,
output reg [3:0]leftseg,rightseg
    );
    reg [19:0]step;
    always@(posedge clk_trl) begin
     if(rst)
     step <= 20'b00000000000000000001;
     else 
     if(sw)
     step <= {step[0],step[19:1]};
     else
     step <= {step[18:0],step[19]};
    a_to_g_left=8'b00000000;
    a_to_g_right=8'b00000000;
    leftseg=4'b0000;
    rightseg=4'b0000;
    case(step)
    20'b00000000000000000001:begin a_to_g_left=8'b10000000;leftseg=4'b1000;end
    20'b00000000000000000010:begin a_to_g_left=8'b10000000;leftseg=4'b0100;end
    20'b00000000000000000100:begin a_to_g_left=8'b10000000;leftseg=4'b0010;end
    20'b00000000000000001000:begin a_to_g_left=8'b10000000;leftseg=4'b0001;end
    20'b00000000000000010000:begin a_to_g_right=8'b10000000;rightseg=4'b1000;end
    20'b00000000000000100000:begin a_to_g_right=8'b10000000;rightseg=4'b0100;end
    20'b00000000000001000000:begin a_to_g_right=8'b10000000;rightseg=4'b0010;end
    20'b00000000000010000000:begin a_to_g_right=8'b10000000;rightseg=4'b0001;end
    20'b00000000000100000000:begin a_to_g_right=8'b01000000;rightseg=4'b0001;end
    20'b00000000001000000000:begin a_to_g_right=8'b00100000;rightseg=4'b0001;end
    20'b00000000010000000000:begin a_to_g_right=8'b00010000;rightseg=4'b0001;end
    20'b00000000100000000000:begin a_to_g_right=8'b00010000;rightseg=4'b0010;end
    20'b00000001000000000000:begin a_to_g_right=8'b00010000;rightseg=4'b0100;end
    20'b00000010000000000000:begin a_to_g_right=8'b00010000;rightseg=4'b1000;end
    20'b00000100000000000000:begin a_to_g_left=8'b00010000;leftseg=4'b0001;end
    20'b00001000000000000000:begin a_to_g_left=8'b00010000;leftseg=4'b0010;end
    20'b00010000000000000000:begin a_to_g_left=8'b00010000;leftseg=4'b0100;end
    20'b00100000000000000000:begin a_to_g_left=8'b00010000;leftseg=4'b1000;end
    20'b01000000000000000000:begin a_to_g_left=8'b00001000;leftseg=4'b1000;end
    20'b10000000000000000000:begin a_to_g_left=8'b00000100;leftseg=4'b1000;end
    endcase
    end
endmodule
