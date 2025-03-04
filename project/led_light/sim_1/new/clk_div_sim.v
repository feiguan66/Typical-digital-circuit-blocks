`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/09 17:15:46
// Design Name: 
// Module Name: clk_div_sim
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


module clk_div_sim(  );

     reg clock = 0;
        
    //output
     wire clk_sys;
    
    //instantiate the Unit under test
    clock_div  uut(
        .clk(clock),
        .clk_sys(clk_sys)
    );
    
//    initial begin
//        #5  resetn = 1;
//    end
    
    always  #5  clock = ~clock; 

endmodule
