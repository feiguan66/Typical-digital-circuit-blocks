`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/19 20:06:35
// Design Name: 
// Module Name: sim_Vote_5
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


module sim_Vote_5( );
    reg [4:0]Datain;
    wire [2:0]count;
    wire resVoter;
    Vote_5 u_Vote_5(.Datain(Datain),.count(count),.resVoter(resVoter));
    always begin
    Datain[0]=0;#100;
    Datain[0]=1;#100;
    end
    always begin
    Datain[1]=0;#200;
    Datain[1]=1;#200;
    end
    always begin
    Datain[2]=0;#400;
    Datain[2]=1;#400;
    end
    always begin
    Datain[3]=0;#800;
    Datain[3]=1;#800;
    end
    always begin
    Datain[4]=0;#1600;
    Datain[4]=1;#1600;
    end
endmodule
