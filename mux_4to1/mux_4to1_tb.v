module mux4to1_tb;
reg i0,i1,i2,i3;
reg s0,s1;
wire y;
mux_4to1 uut (.i0(i0),.i1(i1),.i2(i2),.i3(i3),.s0(s0),.s1(s1),.y(y));
integer j;
initial begin
$monitor ("time=%0t | i0=%b i1=%b i2=%b i3=%b s0=%b s1=%b | y=%b",$time,i0,i1,i2,i3,s0,s1,y);
$dumpfile ("mux4to1_tb.vcd");
$dumpvars (0);
for(j=0;j<16;j=j+1)begin
{s0,s1,i0,i1,i2,i3}=j;#10;
end 
$finish;
end
endmodule

