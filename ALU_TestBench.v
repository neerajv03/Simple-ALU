//`timescale 100ns / 10ns
module aluTest;

reg [1:0] opcode;
reg [7:0] a;
reg [7:0] b;
//output [7:0] out;
wire [7:0] out;

integer i = 0;
integer j = 5;
integer k;

alu new (opcode, a, b, out);

initial
begin
	// This loop checks all conditions for the opcode.
	/*
		opcode - 00 - And Funtion
		opcode - 01 - Or Funtion
		opcode - 10 - Shift Left
		opcode - 11 - Addition without overflow 
		100 ns is the dealy bw each test case.
	*/
	while( i != 5 )
	begin
		a = i;
		b = j;
		i = i + 1;
		j = j - 1;
		
		k = a % 4;
		opcode = k;
		#100;		
	end
	// Checking And gate for Positive Condition
	i = 5;
	//i = j;
	a = i;
	b = i;
	opcode = 2'b00;
	#100;	
end
endmodule