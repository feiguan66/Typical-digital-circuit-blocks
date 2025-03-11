`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/22 08:17:31
// Design Name: 
// Module Name: t_8
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


module t_8(
input clk_trl,reset,
output reg [7:0]state
    );
    parameter y0=8'b00000000,y1=8'b00000001,y2=8'b00000011,y3=8'b00000111,
    y4=8'b00001111,y5=8'b00011111,y6=8'b00111111,y7=8'b01111111;
    always@(posedge clk_trl)
    if(reset)
    state<=y0;
    else begin
    case(state)
    y0:if(1)state<=y1;
    else state<=y0;
    y1:if(1)state<=y2;
    else state<=y0;
    y2:if(1)state<=y3;
    else state<=y0;
    y3:if(1)state<=y4;
    else state<=y0;
    y4:if(1)state<=y5;
    else state<=y0;
    y5:if(1)state<=y6;
    else state<=y0;
    y6:if(1)state<=y7;
    else state<=y0;
    y7:if(1)state<=y0;
    else state<=y0;
    default:state<=y0;
    endcase
    end
endmodule
