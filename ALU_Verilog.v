module alu(opCode, inputA, inputB, out);

input [1:0] opCode;
input [7:0] inputA;
input [7:0] inputB;

wire [7:0] andRes;
wire [7:0] orRes;
wire [7:0] shiftRes;
wire [7:0] addRes;

output [7:0] out;
	andGate aG ( inputA, inputB, andRes);
	orGate oG ( inputA, inputB, orRes );
	shiftLeft sL ( inputA, inputB, shiftRes );
	arithAdd aA ( inputA, inputB, addRes );
	muxALU mx ( andRes, orRes, shiftRes, addRes, opCode, out);

// Program Flow 
/*
	This Module will call All Gates and Shift Functions and hold it in the wires.
	These wires are then fed to a 4:1 MUX.
	The MUX will select the output accordingly to opcode.
	All the test condtions comes from Testbench module
*/
always @ (inputA or inputB or opCode )
begin
end

endmodule
	
	