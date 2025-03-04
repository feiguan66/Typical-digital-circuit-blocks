`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/17 19:51:47
// Design Name: 
// Module Name: sim_MUX_2
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


module sim_MUX_2( );
reg x,y,z;
wire r;
MUX_2 u_MUX_2(.a(x),.b(y),.c(z),.y(r));
always begin
x=0;y=0;z=0;#100;
x=0;y=0;z=1;#100;
x=0;y=1;z=0;#100;
x=0;y=1;z=1;#100;
x=1;y=0;z=0;#100;
x=1;y=0;z=1;#100;
x=1;y=1;z=0;#100;
x=1;y=1;z=1;#100;
end
endmodule

