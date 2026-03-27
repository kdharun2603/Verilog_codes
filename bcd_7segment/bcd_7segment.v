module bcd_7segment (input A, B, C, D,output p, q, r, s, t, u, v);
assign p = A | C | (B & D) | (~B & ~D);
assign q = ~B | (~C & ~D) | (C & D);
assign r = B | ~C | D;
assign s = A | (C & ~D) | (~B & ~D) | (B & ~C & D);
assign t = (~B & ~D) | (C & ~D);
assign u = A | (~C & ~D) | (B & ~C) | (B & ~D);
assign v = A | (B & ~C) | (~B & C) | (C & ~D);
endmodule
