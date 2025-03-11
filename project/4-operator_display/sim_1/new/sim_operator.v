`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/11 16:25:21
// Design Name: 
// Module Name: sim_operator
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


module sim_operator( );
    reg [3:0] m,n;
    reg [2:0]choose;
    wire [4:0] f;
    wire EN;
    wire [3:0]a,b;
    operator u_operator(.m(m),.n(n),.choose(choose),.f(f),.EN(EN),.a(a),.b(b));
    initial begin
    m=4'b1100;
    n=4'b1010;
    end
    always begin
    choose=0;#100;
    choose=1;#100;
    choose=2;#100;
    choose=3;#100;
    choose=4;#100;
    end
endmodule
