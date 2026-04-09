module d_latch (input D,E,
		output reg q);

always @(*) begin
	if(E)
		q=D;
end
endmodule
