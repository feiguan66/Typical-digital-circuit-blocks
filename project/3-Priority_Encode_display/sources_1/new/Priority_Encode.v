`timescale 1ns / 1ps
module Priority_Encode(
input n_EN,input [6:0]Datain,output reg [2:0]D,output reg ET
    );
    integer i;
    reg [20:0]array=21'o6543210;
    always @(n_EN or Datain)
    begin
      if(!n_EN)
        begin:block
        ET=1;
          for(i=20;i>0;i=i-3)
            begin
            D=0;
              if(!Datain[array[i]*4+array[i-1]*2+array[i-2]])
                begin
                D=array[i]*4+array[i-1]*2+array[i-2]+1;
                disable block;
                end
            end
        end
      else
        begin
        ET=0;
        D=0;
        end
    end
endmodule