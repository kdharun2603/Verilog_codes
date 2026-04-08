module tb_decoder_2to4;
reg [1:0] in;
reg en;
wire [3:0] out;
decoder_2to4 uut (.in(in),.en(en),.out(out));
initial begin
$monitor("time = %0t | en = %b | in = %b | out = %b", $time, en, in, out);
$dumpfile("tb_decoder_2to4.vcd");
$dumpvars(0);
en = 0; in = 2'b00; #10;
en = 0; in = 2'b01; #10;
en = 0; in = 2'b10; #10;
en = 0; in = 2'b11; #10;
en = 1; in = 2'b00; #10;
en = 1; in = 2'b01; #10;
en = 1; in = 2'b10; #10;
en = 1; in = 2'b11; #10;
$finish;
end
endmodule
