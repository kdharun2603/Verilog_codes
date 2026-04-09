module comparator_4bit (input[3:0]A,B,
			output reg[2:0] result);

always @(*) begin
	case (1'b1)
		(A>B):  result=3'b100;
		(A==B): result=3'b010;
		(A<B):  result=3'b001;
	endcase
    end
endmodule
