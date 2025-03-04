`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/12 14:15:14
// Design Name: 
// Module Name: First
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


module First( input wire a, input wire b, output wire [2:0] z ); 
 assign z[0] = a&b;
 assign z[1] = a|b;
 assign z[2] = a^b;
endmodule
