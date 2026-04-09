module comparator_4bit_tb;
reg [3:0] A,B;
wire [2:0] result;

comparator_4bit uut (.A(A),.B(B),.result(result));

integer i;

initial begin
$monitor ("time=%0t|A=%b|B=%b|result=%b (G E L)",$time ,A,B,result);
$dumpfile ("comp4b.vcd");
$dumpvars (0);

for (i=0;i<16;i=i+1)begin

	A=4'b1000;
	B=i; #10;
end 
#10 $finish;
end 
endmodule
