module dff_asynchronous_reset (input clk,
			       input reset,
			       input D,
			       output reg q);
 
always @(posedge clk or posedge reset)begin
	if(reset)
		q<=1'b0;
	else
		q<=D;
end
endmodule

