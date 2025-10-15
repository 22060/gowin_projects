module HalfAdder(iA, iB, oS, oCy);
	input iA;
	input iB;
	output oS;
	output oCy;

	assign oS = ~(~iA ^ ~iB);
	assign oCy = ~(~iA & ~iB);
endmodule
