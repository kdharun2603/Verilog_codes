module tff_tb;
reg t,clk,rst;
wire q;

tff uut (.t(t),.clk(clk),.rst(rst),.q(q));

always #5 clk=~clk;
initial begin
$dumpfile("tff.vcd");
$dumpvars(0);

clk=0;
rst=1;
t=0;

#10 rst=0; t=1;
#20 t=0;
#20 t=1;
#20 rst=1;
#10 rst=0;
#20 $finish;

end
initial begin
$monitor("time=%0t|clk=%b|rst=%b|t=%b|q=%b", $time,clk,rst,t,q);

end
endmodule
