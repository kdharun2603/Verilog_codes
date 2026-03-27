module half_subractor 
(input A,input B,output Diff,Borrow);
wire nA;
xor (Diff, A, B);
not (nA, A);
and (Borrow, nA, B);
endmodule
