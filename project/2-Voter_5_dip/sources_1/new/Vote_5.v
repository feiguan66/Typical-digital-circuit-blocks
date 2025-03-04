`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/19 19:29:24
// Design Name: 
// Module Name: Vote_5
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


module Vote_5(
Datain,count,resVoter
    );
    input [4:0]Datain;
    output reg [2:0]count;
    output reg resVoter;
    integer i;
      always@(Datain)
      begin
      count=0;
       for(i=0;i<5;i=i+1)
       begin
       if(Datain[i])
        count=count+1;
       end
       if(count>=3)
        resVoter=1;
       else
        resVoter=0;
      end
endmodule
