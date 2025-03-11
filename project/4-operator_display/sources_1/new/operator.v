`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/11 14:02:44
// Design Name: 
// Module Name: operator
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


module operator(
    input wire [3:0] m,n,
    input wire [2:0]choose,
    output reg [4:0]f,
    output reg EN,
    output reg [3:0]a,b
    );
    always @(*)begin
    EN=0;
    a=m;
    b=n;
    if(choose==0) f=m+n;
    else if(choose==1) f={1'b0,m[3]&n[3],m[2]&n[2],m[1]&n[1],m[0]&n[0]};
    else if(choose==2) f={1'b0,m[3]|n[3],m[2]|n[2],m[1]|n[1],m[0]|n[0]};
    else if(choose==3) f={1'b0,m[3]^n[3],m[2]^n[2],m[1]^n[1],m[0]^n[0]};
    else EN=1;
    end
endmodule
