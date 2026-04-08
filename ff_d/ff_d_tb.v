module ff_d_tb;
reg d;
reg clk;
wire q;
ff_d uut (.d(d),.clk(clk),.q(q));
always #5 clk = ~clk;
initial begin
clk = 0;
d = 0;
$monitor("time=%0t|d=%b|clk=%b|q=%b", $time, clk, d, q);
$dumpfile("dff.vcd");
$dumpvars(0);
#10 d = 1;  
#10 d = 0;   
#10 d = 1;   
#10 d = 1;   
#10 d = 0;   
#20 $finish;
end
endmodule
