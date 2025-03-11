`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/27 15:50:31
// Design Name: 
// Module Name: sim_Dff_p_Ap_32
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


module sim_Dff_p_Ap_32( );
reg clk,n_reset,n_set;
reg [31:0]Datain;
wire [31:0]Dataout;
Dff_p_Ap_32 u_Dff_p_Ap_32(.clk(clk),.Datain(Datain),.n_reset(n_reset),.n_set(n_set),.Dataout(Dataout));
initial begin
clk=0;
Datain=0;
n_reset=0;
n_set=1;
#50 n_reset=1;n_set=0;
#40 n_set=1;n_reset=0;
#40 n_reset=1;
end
always
#20 clk=~clk;
always
begin
#50 Datain=Datain+1000;
#50 Datain=Datain-100;
end
endmodule
