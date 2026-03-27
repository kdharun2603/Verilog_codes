module full_sub(input a,b,bin, output diff,bout);
wire w1,w2,w3,w4,w5;
xor x1(w1,a,b);
xor x2(diff,w1,bin);
not n1(w4,a);
not n2(w5,w1);
and a1(w3,w5,bin);
and a2(w2,w4,b);
or o1(bout,w3,w2);
endmodule
