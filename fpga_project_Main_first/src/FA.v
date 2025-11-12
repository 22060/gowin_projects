module FullAdder(iA, iB, iCy, oS, oCy);
	input iA;
	input iB;
	input iCy;
	output oS;
	output oCy;

	wire HA1_S;
	wire HA1_C;
	wire HA2_C;

	HalfAdder HA1 (
		.iA(iA),
		.iB(iB),
		.oS(HA1_S),
		.oCy(HA1_C)
	);
	HalfAdder HA2 (
		.iA(HA1_S),
		.iB(iCy),
		.oS(oS),
		.oCy(HA2_C)
	);
	assign oCy = HA1_C | HA2_C;
endmodule
