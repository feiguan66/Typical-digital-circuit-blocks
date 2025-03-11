`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/22 00:49:18
// Design Name: 
// Module Name: counter_10
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


module counter_10(
input clrn,clk,ent,enp,ldn,
input [din_width-1:0]din,
output reg [qout_width-1:0]qout,
output rco
    );
    parameter din_width='d4;
    parameter qout_width='d4;
    parameter counter_size='d10;
    always@(posedge clk or negedge clrn or negedge ldn)
    begin
    if(~clrn) qout<=0;
    else if(!ldn) qout<=din;
    else if(enp && ent==1)
    if(qout==counter_size-1) qout<=0;
    else qout<=qout+1;
    else qout<=qout;
    end
    assign rco=(qout==counter_size-1 && ent)?1:0;
endmodule
