`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/24 20:49:39
// Design Name: 
// Module Name: Encode
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


module Encode(
input n_EN,input [6:0]Datain,output reg [2:0]D,output reg ET
    );
    integer i,j;
    always @(n_EN or Datain)
    begin
      if(!n_EN)
        begin
        ET=1;
        j=0;
        for(i=0;i<7;i=i+1)
        begin
          if(!Datain[i])
            begin
            D=i+1;
            j=j+1;
            end
        end
        if(j!=1)
          D=0;
        end
      else
        begin
        ET=0;
        D=0;
        end
    end
endmodule
