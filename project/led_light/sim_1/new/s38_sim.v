`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/09 17:16:35
// Design Name: 
// Module Name: s38_sim
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


module s38_sim(   );
 //input
    
    reg C = 0,B = 0 ,A = 0 ,Enable = 1;
    //output
    wire y0,y1,y2,y3,y4,y5,y6,y7;
    
    //instantiate the Unit under test
    s_38  uut(
        .C(C),
        .B(B),
        .A(A),
        .Enable(Enable),
        .Y0(y0),
        .Y1(y1),
        .Y2(y2),
        .Y3(y3),
        .Y4(y4),
        .Y5(y5),
        .Y6(y6),
        .Y7(y7)
    );
    
    initial begin
         #5 C = 0; B = 0; A = 1;
         #5 C = 0; B = 1; A = 0;
         #5 C = 0; B = 1; A = 1;
         #5 C = 1; B = 0; A = 0;
         #5 C = 1; B = 0; A = 1;
         #5 C = 1; B = 1; A = 0;
         #5 C = 1; B = 1; A = 1;
          
    end
  
endmodule

