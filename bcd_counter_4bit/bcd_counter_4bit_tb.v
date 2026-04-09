module bcd_counter_4bit_tb;
reg clk, reset;
wire [3:0]q;

bcd_counter_4bit uut (.clk(clk),.reset(reset),.q(q));

always #5 clk=~clk;

initial begin
$monitor("time=%b|clk=%b|reset=%b|q=%b", $time,clk,reset,q);
clk =0;
reset=1; #10;
reset=0;

#100 $finish;

end
endmodule
