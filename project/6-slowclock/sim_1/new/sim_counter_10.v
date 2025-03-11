`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/22 01:14:57
// Design Name: 
// Module Name: sim_counter_10
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


module sim_counter_10( );
parameter din_width='d4;
parameter qout_width='d4;
parameter counter_size='d10;
reg clrn,clk,ent,enp,ldn;
reg [din_width-1:0]din;
wire [qout_width-1:0]qout;
wire rco;
counter_10 u_counter_10(.clrn(clrn),.clk(clk),.ent(ent),.enp(enp),
.ldn(ldn),.din(din),.qout(qout),.rco(rco));
initial begin
clk=0;
din=4'b0001;;
clrn=0;ldn=1;
#30 clrn=1;ldn=0;
#30 clrn=0;ldn=1;
#30 clrn=1;
end
initial begin
ent=1;enp=1;
#120 ent=0;enp=1;
#50 ent=1;enp=0;
#40 enp=1;
end
always begin
#20 clk=~clk;
end
endmodule
