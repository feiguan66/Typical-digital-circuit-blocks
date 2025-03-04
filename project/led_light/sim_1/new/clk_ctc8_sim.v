`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/09 17:19:36
// Design Name: 
// Module Name: clk_ctc8_sim
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


module clk_ctc8_sim( );
     reg clock = 0;
     reg reset = 1;
    
    //output
     wire[2:0] count;
    
    //instantiate the Unit under test
    clk_ctc8  uut(
        .clock(clock),
        .reset(reset),
        .count(count)
    );
    
    initial begin
        #5  reset = 0;
    end
    
    always  #5  clock = ~clock; 
endmodule
