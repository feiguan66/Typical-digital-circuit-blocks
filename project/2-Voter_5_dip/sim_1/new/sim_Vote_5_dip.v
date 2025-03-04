`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/23 18:46:42
// Design Name: 
// Module Name: sim_Vote_5_dip
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


module sim_Vote_5_dip( );
reg [4:0]x;
wire [7:0]a_to_g_left,a_to_g_right;
wire [3:0]leftseg,rightseg;
Voter_5_dip u_Voter_5_dip(.x(x),.a_to_g_left(a_to_g_left),.a_to_g_right(a_to_g_right),
.leftseg(leftseg),.rightseg(rightseg));
always begin
x[2:0]=000;#100;
x[2:0]=001;#100;
x[2:0]=010;#100;
x[2:0]=011;#100;
x[2:0]=100;#100;
x[2:0]=101;#100;
x[2:0]=110;#100;
x[2:0]=111;#100;
end
always begin
x[4:3]=00;#800;
x[4:3]=01;#800;
x[4:3]=10;#800;
x[4:3]=11;#800;
end
endmodule
