`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/11 15:29:49
// Design Name: 
// Module Name: sim_operator_display
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


module sim_operator_display( );
reg [3:0] m,n;
reg [2:0]choose;
wire [7:0]a_to_g_left;
wire [3:0]leftseg;
wire [4:0]switch_led_right;
operator_display u_operator_display(.m(m),.n(n),.choose(choose),
.a_to_g_left(a_to_g_left),.leftseg(leftseg),.switch_led_right(switch_led_right));
initial begin
m=4'b1100;
n=4'b1010;
choose=0;
end
always
begin
choose=0;#100;
choose=1;#100;
choose=2;#100;
choose=3;#100;
choose=4;#100;
end
endmodule
