`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/10 10:56:49
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
input wire [2:0]choose,
input wire EN,
input wire [4:0] f,result,
output reg [7:0]a_to_g_left,
output reg [4:0]switch_led_right
    );
    integer i;
    always@(*) begin
    case(choose)
    0:a_to_g_left=8'b00111010;
    1:a_to_g_left=8'b11101110;
    2:a_to_g_left=8'b11111100;
    3:a_to_g_left=8'b11000100;
    default:begin a_to_g_left=8'b10011100;end
    endcase
    if(!EN)
    for(i=0;i<5;i=i+1)
    switch_led_right[i]=f[i];
    else
    for(i=0;i<5;i=i+1)
    switch_led_right[i]=result[i];
    end
endmodule