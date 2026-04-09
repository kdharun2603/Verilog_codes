module ring_counter_4bit_tb;
reg clk,reset;
wire [3:0]q;
ring_counter_4bit uut (.clk(clk),.reset(reset),.q(q));

always #5 clk=~clk;
initial begin
	clk=0;
	reset=1;
	#10 reset=0;
#100 $finish;
end 

initial begin
$monitor ("time=%0t|clk=%b|reset=%b|q=%b",$time,clk,reset,q);
$dumpfile("rico4b.vcd");
$dumpvars(0);

end 
endmodule

