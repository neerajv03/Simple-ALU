module muxALU(a, b, c, d, op, y);

input [7:0] a;
input [7:0] b;
input [7:0] c;
input [7:0] d;
input [1:0] op;

output [7:0] y;
//reg [1:0] op;
reg [7:0] y;

always @ (a or b or c or d or op )
begin
	// We can use case statement also instead of if-Else Ladder

	case(op)
	2'b00 : y = a;
	2'b01 : y = b;
	2'b10 : y = c;
	default : y = d;
	endcase
		

	/*if ( op == 0 )
	begin
		y = a;
	end
	
	else if ( op == 1 )
	begin
		y = b;
	end

	else if ( op == 2 )
	begin
		y = c;
	end
	
	else 
	begin
		y = d;
	end
*/
end
endmodule