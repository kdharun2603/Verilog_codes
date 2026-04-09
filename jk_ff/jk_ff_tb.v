module jk_ff_tb;

reg j,k,clk,rst;
wire q;

jk_ff uut (.j(j),.k(k),.clk(clk),.rst(rst),.q(q));

always #5clk=~clk;
initial begin

$dumpfile("jkff.vcd");
$dumpvars(0);

clk = 0;
rst = 1;
j = 0; k = 0;
#10 rst=0;
#10 j=0; k=0;
#20 j=0; k=1;
#20 j=1; k=0;
#20 j=1; k=1;

#20 rst = 1;   
#10 rst = 0;

#20 $finish;
end

initial begin

$monitor("time=%0t | clk=%b | rst=%b | j=%b | k=%b | q=%b",$time, clk, rst, j, k, q);
end
endmodule
