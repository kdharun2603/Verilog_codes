module dff_synchronous_reset_tb;
reg clk, reset, D;
wire q;

dff_synchronous_reset uut (.clk(clk),.reset(reset),.D(D),.q(q));

always #5 clk=~clk;

initial begin

$monitor("time=%0t|clk=%b|reset=%b|D=%b|q=%b", $time,clk,reset,D,q);
$dumpfile ("dffsyncr.vcd");
$dumpvars (0);
clk =0;

reset =1; D=0; #10;
reset =0; D=1; #10;
D =0; #10;
reset=1; #10;
reset=0; D=1; #10;

#10 $finish;

end
endmodule


