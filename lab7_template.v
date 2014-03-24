//////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////
//*****************LAB 7**********************************
// There are 3 modules here:
// 1. dff - this is the d flip flop. Fill in the required spots, 
//		refer to jkff_sample.v for reference.
// 2. binary_counter.v - fill in the blank spots. This is
//    the top-level module which will instantiate D FF instances
// 3. binary_counter_tb.v - This module instantiates the 
//    top-level module (binary_counter) and monitors the
//    values of its outputs using the monitor statement.
//    tb => test bench. The test bench allows you to simulate
//    the circuit and monitor the outputs for verification.
//
//		Use any c4 lab PC to compile / execute your code (first room
//		when walking into lab).
//
//    TO COMPILE:
//    iverilog inputfile.v    --> if successful, this creates an 
//										executable a.out in same folder
//    TO RUN:
//	   $ ./a.out 			--> This executes the compiled module and 
//								prints monitor statements to stdout
//////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////
// D Flip flop module
// This is a BEHAVIORAL level description
// Use jkff_sample.v as a reference
//////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////

module dff ( d, clk, preset, clear, q, q_bar );

input /*FILL IN*/;
output /*FILL IN*/;

reg /*FILL IN*/;

always @ (/*FILL IN*/ )
begin

	/*FILL IN*/

end

endmodule
//////////////////////////////////////////////////////////
// END OF D Flip Flop module
//////////////////////////////////////////////////////////


//////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////
// BINARY COUNTER module
// This is a STRUCTURAL LEVEL description
// ** Do not use high level constructs such as if / else / while / etc
// This module should combines the 4 D FFs to 
// create the binary counter circuit
// IMPORATANT NOTE: This module initializes the FFs to the
// state 1100
//////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////

module binary_counter ( clk, reset, a, b, c, d );

input /*FILL IN*/;
output a, b, c, d;

wire a, b, c, d;

wire d1, d2, d3, d4;
wire q1, q1_bar, q2, q2_bar, q3, q3_bar, q4, q4_bar;

// create input functions for the FFs
assign d1 = /*FILL IN*/;
assign d2 = /*FILL IN*/;
assign d3 = /*FILL IN*/;
assign d4 = /*FILL IN*/;

// Create (instantiate) 4 flip flops and assign input and output variables
// Flip flop 1

/*FILL IN*/

// Flip flop 2

/*FILL IN*/

// Flip flop 3

/*FILL IN*/

// Flip flop 4

/*FILL IN*/

// read the outputs
assign a = q1;
assign b = q2;
assign c = q3;
assign d = q4;

endmodule
//////////////////////////////////////////////////////////
// END OF BINARY COUNTER module
//////////////////////////////////////////////////////////

///////////////////////////////////////////
///////////////////////////////////////////
// TEST BENCH
///////////////////////////////////////////
///////////////////////////////////////////

module binary_counter_tb;

reg clock, reset;
wire a, b, c, d;

binary_counter counter1 (
	.clk (clock),
	.reset (reset),
	.a (a),
	.b (b),
	.c (c),
	.d (d)
);

initial begin
	$monitor ("%b%b%b%b", d, c, b, a);
	clock = 0;
	reset = 1;

	#1 reset = 0;
	//#120 reset = 1;
	//#10 reset = 0;

	#500 $finish; 
end

always begin
 #10 clock = !clock;
end

endmodule

