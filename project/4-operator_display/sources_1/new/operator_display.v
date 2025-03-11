`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/11 15:20:41
// Design Name: 
// Module Name: operator_display
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


module operator_display(
    input wire [3:0] m,n,
    input wire [2:0]choose,
    output wire [7:0]a_to_g_left,
    output wire [3:0]leftseg,
    output wire [4:0]switch_led_right
    );
    wire [4:0] f,result;
    wire EN;
    wire [3:0]a,b;
    assign leftseg=4'b0001;
    operator op(.m(m),.n(n),.choose(choose),.f(f),.EN(EN),.a(a),.b(b));
    compare cmp(.EN(EN),.a(a),.b(b),.result(result));
    display dis(.choose(choose),.EN(EN),.f(f),.result(result),
    .a_to_g_left(a_to_g_left),.switch_led_right(switch_led_right));
endmodule
