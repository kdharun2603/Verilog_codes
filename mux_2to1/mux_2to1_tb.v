module mux_2to1_tb;
reg i0,i1;
reg s;
wire y;
mux_2to1 uut (.i0(i0),.i1(i1),.s(s),.y(y));

integer k;
initial begin
$monitor ("time=%0t | i0=%b i1=%b s=%b | y=%b",$time,i0,i1,s,y);
$dumpfile ("mux_2to1_tb.vcd");
$dumpvars (0);

for (k=0;k<8;k=k+1)begin
{s,i0,i1}=k;#10;
end
$finish;
end
endmodule
