module encoder(iF, oA);
 input [3:0] iF; 
 output [1:0] oA;
    function [1:0] Enc;
        input[3:0] iF;
        begin
        case(iF)
            4'b0001: Enc = 2'b00;
            4'b0010: Enc = 2'b01;
            4'b0100: Enc = 2'b10;
            4'b1000: Enc = 2'b11;
            default:Enc = 2'bXX;
        endcase
  end
  endfunction
  assign oA = Enc(iF);
endmodule 