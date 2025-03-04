`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/09 16:27:37
// Design Name: 
// Module Name: ctc8_sim
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


module ctc8_sim(    );
    //input
    reg clock = 0;
    reg resetn = 1;
    
    //output
    wire[2:0] count;
    //instantiate the Unit under test
    ctc8  uut(
        .clk(clock),
        .reset(resetn),
        .count(count)
    );
    
    initial begin
        #10  resetn = 0;
    end
    
    always  #5  clock = ~clock;        
endmodule
