`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/17 19:54:49
// Design Name: 
// Module Name: sim_MUX_4
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


module sim_MUX_4( );
reg [3:0]X;
reg [1:0]S;
wire R;
MUX_4 u_MUX_4(.I(X),.S(S),.Y(R));
always 
begin
S=00;#1600;
S=01;#1600;
S=10;#1600;
S=11;#1600;
end
always
begin
X[0]=0;#100;
X[0]=1;#100;
end
always
begin
X[1]=0;#200;
X[1]=1;#200;
end
always
begin
X[2]=0;#400;
X[2]=1;#400;
end
always
begin
X[3]=0;#800;
X[3]=1;#800;
end
endmodule
