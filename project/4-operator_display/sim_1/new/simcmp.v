`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/10 10:09:45
// Design Name: 
// Module Name: simcmp
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


module simcmp( );
reg [3:0]a,b;
reg EN;
wire[4:0]result;
    compare u_compare(.a(a),.b(b),.result(result),.EN(EN));
    initial begin
    EN=1;
    end
    always begin
    a=0000;b=0000;#100;
    a=1000;b=0000;#100;
    a=0000;b=1000;#100;
    end
endmodule
