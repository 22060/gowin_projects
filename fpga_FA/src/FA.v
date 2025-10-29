module FullAdder(iA, iB, iCy, oS, oCy);
	input iA;
	input iB;
	input iCy;
	output oS;
	output oCy;

	wire [1:0] add;
	 assign add = iA + iB + iCy;
	assign oS = ~add[0];
	assign oCy = ~add[1];
endmodule
