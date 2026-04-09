module jhonson_counter_4bit_tb;
reg clk,reset;
wire [3:0]q;

jhonson_counter_4bit uut (.clk(clk),.reset(reset),.q(q));

always #5 clk=~clk;
initial begin
	clk=0;
	reset=1;
	#10 reset=0;
#100 $finish;
end

initial begin
$monitor ("time=%ot|clk=%b|reset=%b|q=%b",$time,clk,reset,q);
$dumpfile ("jsco4b.vcd");
$dumpvars (0);

end
endmodule
