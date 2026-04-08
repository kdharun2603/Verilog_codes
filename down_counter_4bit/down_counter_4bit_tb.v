module down_counter_4bit_tb;
reg clk, reset;
wire [3:0]q;

down_counter_4bit uut(.clk(clk),.reset(reset),.q(q));
always 
#5 clk=~clk;
initial begin
$monitor("time=%0t|clk=%b|reset=%b|q=%b",$time,clk,reset,q);
$dumpfile("doco4b.vcd");
$dumpvars(0);
clk=0;
reset=1;#10;
reset=0;

repeat (16)@(posedge clk);
$finish;
end 
endmodule


