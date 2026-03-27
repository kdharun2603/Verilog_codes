module tb_bcd_7segment;
reg A, B, C, D;
wire p, q, r, s, t, u, v;
bcd_7segment uut (.A(A), .B(B), .C(C), .D(D),.p(p), .q(q), .r(r), .s(s),.t(t), .u(u), .v(v));
initial begin
$display("Time | A B C D || p q r s t u v");
$monitor("%4t | %b %b %b %b || %b %b %b %b %b %b %b",$time, A, B, C, D, p, q, r, s, t, u, v);
$dumpfile("bcd_7segment.vcd");
$dumpvars(0);
{A,B,C,D} = 4'b0000; #10; 
{A,B,C,D} = 4'b0001; #10; 
{A,B,C,D} = 4'b0010; #10; 
{A,B,C,D} = 4'b0011; #10; 
{A,B,C,D} = 4'b0100; #10; 
{A,B,C,D} = 4'b0101; #10; 
{A,B,C,D} = 4'b0110; #10;
{A,B,C,D} = 4'b0111; #10; 
{A,B,C,D} = 4'b1000; #10; 
{A,B,C,D} = 4'b1001; #10; 
$finish;
end
endmodule
