module up_counter_4bit_tb;
reg clk,reset;
wire [3:0]q;

up_counter_4bit uut(.clk(clk),.reset(reset),.q(q));

always #5clk=~clk;

initial begin

$monitor("time=%4t|q=%b",$time,q);
$dumpfile("upco4b.vcd");
$dumpvars(0);

clk=0;
reset=1;#10;
reset=0;
#200;
$finish;
end
endmodule
