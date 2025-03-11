`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/10 09:24:49
// Design Name: 
// Module Name: compare
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


module compare(
    input wire EN,
    input wire [3:0] a,b,
    output reg [4:0] result
    );
    always@(*)
    begin
    result=0;
    if(EN)
    begin
    if(a>b)result[2]=1;
    else if(a<b) result[1]=1;
    else result[0]=1;
    end
    end
endmodule
