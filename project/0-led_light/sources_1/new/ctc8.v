`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/09 16:25:11
// Design Name: 
// Module Name: ctc8
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


//8进制减1计数器
//时钟信号clk上升沿到来时，计数器减1；复位信号reset为高电平时，计数器复位（即清0）
module ctc8(
    clk,
    reset,
    count
    );
    input clk,reset;
    output reg[2:0] count;
    
    always @(posedge clk or posedge reset)  begin
        if(reset == 1) begin
            count = 0;
        end else begin
            if(count == 0)
                count = 7;
            else begin
                count = count - 1;
            end
        end
    end
endmodule
