`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/09 17:18:22
// Design Name: 
// Module Name: clk_ctc8
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


module clk_ctc8(
    clock,
    reset,
    count
    );
    
    input clock,reset;
    output [2:0] count;
    
      
    // clock
    clock_div  U0(
         .clk(clock),
         .clk_sys(clk_sys)
    );
    
//    // 38decoder
//    s_38  U1(
//        .A(count[0]),
//        .B(count[1]),
//        .C(count[2]),
//        .Enable(resetn),// 由于Minisys板子reset是高电平有效，所以此处取反
//        .Y0(y0),
//        .Y1(y1),
//        .Y2(y2),
//        .Y3(y3),
//        .Y4(y4),
//        .Y5(y5),
//        .Y6(y6),
//        .Y7(y7)
//    );
    
    // ctc
    ctc8  U2(
        .clk(clk_sys),
        .reset(reset),
        .count(count)
    );    
endmodule
