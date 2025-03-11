`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/22 07:05:56
// Design Name: 
// Module Name: t_11001
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


module t_11001(
input reset,clk,x,
output reg z
    );
    parameter y0=4'b0000,y1=4'b0001,y2=4'b0011,y3=4'b0110,y4=4'b1100;
    reg [3:0]state_c,state_n;
    always@(posedge clk)
    if(reset) state_c<=y0;
    else state_c<=state_n;
    
    always@(x or state_c)
    case(state_c)
    y0:if(x) state_n=y1;
    else state_n=y0;
    y1:if(x) state_n=y2;
    else state_n=y0;
    y2:if(!x) state_n=y3;
    else state_n=y2;
    y3:if(!x) state_n=y4;
    else state_n=y1;
    y4:if(x) state_n=y0;
    else state_n=y0;
    default:state_n=y0;
    endcase
    
    always@(posedge clk)
    if(reset)z<=0;
    else if((state_c==y4)&&(x==1))z<=1;
    else z<=0;
endmodule
