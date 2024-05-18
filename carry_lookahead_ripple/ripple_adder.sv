module ripple_adder (
	input  logic  [15:0] a, 
    input  logic  [15:0] b,
	input  logic         cin,
	
	output logic  [15:0] s,
	output logic         cout
);

	/* TODO
		*
		* Insert code here to implement a ripple adder.
		* Your code should be completly combinational (don't use always_ff or always_latch).
		* Feel free to create sub-modules or other files. */
		// make one bit adder instanciate in seperate module 
		// instanciate one bit aadder 4 times
		// 16 bit adder call four bit adder 4 times 
		
		// one bit adder 
		//assign s = (a ^ b) ^ cin;
		//assign cout = (cin & a) | (cin & b) | (a & b);
		
		module full_adder (input logic x, y, z,
                output logic s, c );
                assign s = x^y^z;
                assign c = (x&y)|(y&z)|(x&z);
        endmodule
       
        full_adder FA0(.x(a[0]), .y(b[0]), .z(cin), .s(s[0]), .c(s1));
        full_adder FA1(.x(a[1]), .y(b[1]), .z(s1), .s(s[1]), .c(s2));
        full_adder FA2(.x(a[2]), .y(b[2]), .z(s2), .s(s[2]), .c(s3));
        full_adder FA3(.x(a[3]), .y(b[3]), .z(s3), .s(s[3]), .c(s4));
        full_adder FA4(.x(a[4]), .y(b[4]), .z(s4), .s(s[4]), .c(s5));
        full_adder FA5(.x(a[5]), .y(b[5]), .z(s5), .s(s[5]), .c(s6));
        full_adder FA6(.x(a[6]), .y(b[6]), .z(s6), .s(s[6]), .c(s7));
        full_adder FA7(.x(a[7]), .y(b[7]), .z(s7), .s(s[7]), .c(s8));
        full_adder FA8(.x(a[8]), .y(b[8]), .z(s8), .s(s[8]), .c(s9));
        full_adder FA9(.x(a[9]), .y(b[9]), .z(s9), .s(s[9]), .c(s10));
        full_adder FA10(.x(a[10]), .y(b[10]), .z(s10), .s(s[10]), .c(s11));
        full_adder FA11(.x(a[11]), .y(b[11]), .z(s11), .s(s[11]), .c(s12));
        full_adder FA12(.x(a[12]), .y(b[12]), .z(s12), .s(s[12]), .c(s13));
        full_adder FA13(.x(a[13]), .y(b[13]), .z(s13), .s(s[13]), .c(s14));
        full_adder FA14(.x(a[14]), .y(b[14]), .z(s14), .s(s[14]), .c(s15));   
        full_adder FA15(.x(a[15]), .y(b[15]), .z(s15), .s(s[15]), .c(cout));
  

    
endmodule