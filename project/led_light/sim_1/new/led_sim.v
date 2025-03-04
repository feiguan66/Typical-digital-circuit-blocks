`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/09 16:39:26
// Design Name: 
// Module Name: led_sim
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


module led_sim(    );
    //input
    reg clock = 0;
    reg reset = 1;
    
    //output
    wire y0,y1,y2,y3,y4,y5,y6,y7;
    
    //instantiate the Unit under test
    led_lights  uut(
        .clock(clock),
        .reset(reset),
        .y0(y0),
        .y1(y1),
        .y2(y2),
        .y3(y3),
        .y4(y4),
        .y5(y5),
        .y6(y6),
        .y7(y7)
    );
    
    initial begin
        #10  reset = 0;
    end
    
    always  #5  clock = ~clock;        
endmodule


