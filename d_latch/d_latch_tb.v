module d_latch_tb;
reg D,E;
wire q;

d_latch uut(.D(D),.E(E),.q(q));

initial begin 
$monitor("time=%0t|D=%b|E=%b|",$time, D,E,q);
$dumpfile("dlatch.vcd");
$dumpvars(0);

D=0; E=0; #10;

E=1; D=0; #10;
D=1; #10;
D=0; #10;

E=0; D=1; #10;
D=0; #10;

E=1; D=1; #10;
D=0; #10;

#10; $finish;

end 
endmodule
