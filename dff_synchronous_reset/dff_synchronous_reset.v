module dff_synchronous_reset (input clk,
			      input reset,
			      input D,
			      output reg q);

always @(posedge clk) begin
	if(reset)
		q<=1'b0;
	else
		q<=D;
end
endmodule
