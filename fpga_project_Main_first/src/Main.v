module Main(i1,i2,i3,i4,oOut);
    input i1;
    input i2;
    input i3;
    input i4;
    output [1:0] oOut;

    wire [1:0] S1;
    wire [1:0] S2;
    FullAdder FA_1 (
        .iA(~i1),
        .iB(~i2),
        .iCy(~i3),
        .oS(S1[0]),
        .oCy(S1[1])
    );
    FullAdder FiA_2 (
        .iA(i1),
        .iB(~i2),
        .iCy(~i3),
        .oS(S2[0]),
        .oCy(S2[1])
    );
    assign oOut = i4 ? S2 : S1;
endmodule