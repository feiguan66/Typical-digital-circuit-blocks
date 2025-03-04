`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/26 13:40:52
// Design Name: 
// Module Name: sim_Priority_Encode
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


module sim_Priority_Encode( );
reg n_EN;
reg [6:0]Datain;
wire [2:0]D;
wire ET;
Priority_Encode u_Priority_Encode(.n_EN(n_EN),.Datain(Datain),.D(D),.ET(ET));
initial
Datain=8'b11111111;
always
for(integer i=0;i<6;i=i+1)
begin
Datain[i]=0;#100;
Datain[i]=1;#100;
end
always begin
n_EN=0;#1200;
n_EN=1;#1200;
end
endmodule
