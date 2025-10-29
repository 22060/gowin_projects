module decoder(iA, oF);
  input  [1:0] iA;
  output [3:0] oF;

  function [3:0] Dec;
      input [1:0] iA;
      begin
          case(iA)
          2'b00: Dec = 4'b0000;
          2'b01: Dec = 4'b0001;
          2'b10: Dec = 4'b0010;
          2'b11: Dec = 4'b0100;
          default:Dec = 4'bXXXX;
          endcase
      end
  endfunction
  assign oF = ~Dec(iA);
endmodule
