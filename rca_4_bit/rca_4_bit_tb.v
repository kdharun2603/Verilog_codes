module rca_4_bit_tb;
reg [3:0] a, b;
reg cin;
wire [3:0] sum;
wire cout;
rca_4_bit uut (.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));


integer i;
initial begin
    
$dumpfile("rca.vcd");
$dumpvars(0);
$monitor("time=%0t|a=%b|b=%b|cin=%b|sum=%b|cout=%b", $time, a, b, cin, sum, cout);
for(i=0;i<16;i=i+1)begin
    

    cin=i[0];
   a=i;
    b=i;
   #10;

   end

$finish;

end
endmodule
