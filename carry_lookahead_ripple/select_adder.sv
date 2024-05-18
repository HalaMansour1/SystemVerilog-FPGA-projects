

	/* TODO
		*
		* Insert code here to implement a CSA adder.
		* Your code should be completly combinational (don't use always_ff or always_latch).
		* Feel free to create sub-modules or other files. */
		


module full_adder_1 (input logic x, y, z,
                output logic sum, c );
                assign sum = x^y^z;
                assign c = (x&y)|(y&z)|(x&z);
endmodule

        
module ADDER4_cin0 (input logic [3:0] A, B, input logic c_in, output logic [3:0] S0,
output logic c_out1);
logic c1, c2, c3;
full_adder_1 FA0(.x(A[0]), .y(B[0]), .z(c_in), .sum(S0[0]), .c(c1));
full_adder_1 FA1(.x(A[1]), .y(B[1]), .z(c1), .sum(S0[1]), .c(c2));
full_adder_1 FA2(.x(A[2]), .y(B[2]), .z(c2), .sum(S0[2]), .c(c3));
full_adder_1 FA3(.x(A[3]), .y(B[3]), .z(c3), .sum(S0[3]), .c(c_out1));
endmodule

module ADDER4_cin1 (input logic [3:0] A, B, input logic c_in, output logic [3:0] S1,
output logic c_out2);
logic c1, c2, c3;
full_adder_1 FA0(.x(A[0]), .y(B[0]), .z(c_in), .sum(S1[0]), .c(c1));
full_adder_1 FA1(.x(A[1]), .y(B[1]), .z(c1), .sum(S1[1]), .c(c2));
full_adder_1 FA2(.x(A[2]), .y(B[2]), .z(c2), .sum(S1[2]), .c(c3));
full_adder_1 FA3(.x(A[3]), .y(B[3]), .z(c3), .sum(S1[3]), .c(c_out2));

endmodule


module mux2_1(input logic [3:0] in1, in2, 
    input logic select,
 output logic [3:0] out);

assign out = select ? in2 : in1;
endmodule :mux2_1


module mux2_1bit(input logic in1, in2, 
    input logic select,
 output logic out);

assign out = select ? in2 : in1;
endmodule :mux2_1bit


module ADDER16 (input logic [3:0] A, B, input logic cin, output logic [3:0] s,
output logic cout);

logic [3:0] S1, S0;
logic c1, c2, c3;
//logic mu;
//mux1
//mux2
assign cin0 = 0;
assign cin1 = 1;

ADDER4_cin0 FA0(.A(A[3:0]), .B(B[3:0]), .c_in(cin0), .S0(S0), .c_out1(c1));
ADDER4_cin1 FA1(.A(A[3:0]), .B(B[3:0]), .c_in(cin1), .S1(S1), .c_out2(c2));


mux2_1 MU1(.in1(S0), .in2(S1), .select(cin), .out(s[3:0])); 
mux2_1bit MU2(.in1(c1), .in2(c2), .select(cin), .out(cout)); 
//adder4 cin 1 -> output: smux2

//mux(mux1, mux2) -> S[0:3'
endmodule




module select_adder (
	input  logic  [15:0] a,  b,
	input  logic         cin,
	
	output logic  [15:0] s,
	output logic         cout
);


logic cin0;
logic cin1;
logic ca,cb,cc;
//assign cin0 = 0;
//assign cin1 = 1;
     
     
ADDER16 A16(.A(a[3:0]), .B(b[3:0]), .cin(0), .s(s[3:0]), .cout(ca));
ADDER16 B16(.A(a[7:4]), .B(b[7:4]), .cin(ca), .s(s[7:4]), .cout(cb));
ADDER16 C16(.A(a[11:8]), .B(b[11:8]), .cin(cb), .s(s[11:8]), .cout(cc));
ADDER16 D16(.A(a[15:12]), .B(b[15:12]), .cin(cc), .s(s[15:12]), .cout(cout));
                                    

	
endmodule