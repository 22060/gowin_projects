module Sel(iA,iB,iC,iSw,oOut,oEn);
  input [2:0]iA;
  input [2:0]iB;
  input [2:0]iC;
  input [1:0]iSw;
  output [2:0]oOut;
  output oEn;

  assign {oEn, oOut} = ~SelF(iA,iB,iC,~iSw);
  function [3:0] SelF;
    input [2:0] iA;
    input [2:0] iB;
    input [2:0] iC;
    input [1:0] iSw;
  begin
    case(iSw)
        2'b00: SelF = {1'b0, 3'b000};      // 出力0、Enable=0
        2'b01: SelF = {1'b1, iA};          // A選択、Enable=1
        2'b10: SelF = {1'b1, iB};          // B選択、Enable=1
        2'b11: SelF = {1'b1, iC};          // C選択、Enable=1
      default: SelF=4'bXXXX;
    endcase
  end
  endfunction
endmodule
