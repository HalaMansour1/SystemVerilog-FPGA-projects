            module lookahead_adder (
	input  logic  [15:0] a, 
    input  logic  [15:0] b,
	input  logic         cin,
	
	output logic  [15:0] s,
	output logic         cout
);
logic lol, dc, hehe;
logic c4, c8, c12;
logic pg0, pg4, pg8, pg12, gg0, gg4, gg8, gg12;
assign c4 = gg0 | (cin & pg0);
assign c8 = gg4 | (gg0 & pg4) | (cin & pg0 & pg4);
assign c12 = gg8 | (gg4 & pg8) | (gg0 & pg8 & pg4) | (cin & pg8 & pg4 & pg0);
assign cout = gg12 | (gg8 & pg12) | (gg4 & pg8 & pg12) | (gg0 & pg4 & pg8 & pg12) | (cin & pg0 & pg4 & pg8 & pg12);


ADDER4_LA LA0(.A(a[3:0]), .B(b[3:0]), .c_in(cin), .S_LA(s[3:0]), .cout_LA(lol), .pg(pg0), .gg(gg0));
ADDER4_LA LA1(.A(a[7:4]), .B(b[7:4]), .c_in(c4), .S_LA(s[7:4]), .cout_LA(dc), .pg(pg4), .gg(gg4));
ADDER4_LA LA2(.A(a[11:8]), .B(b[11:8]), .c_in(c8), .S_LA(s[11:8]), .cout_LA(hehe),.pg(pg8), .gg(gg8));
ADDER4_LA LA3(.A(a[15:12]), .B(b[15:12]), .c_in(c12), .S_LA(s[15:12]), .cout_LA(),.pg(pg12), .gg(gg12));
    
            endmodule

	/* TODO
		*
		* Insert code here to implement a CLA adder.
		* Your code should be completly combinational (don't use always_ff or always_latch).
		* Feel free to create sub-modules or other files. */
		
// module for adder 4 bit
module ADDER4_LA (input logic [3:0] A, B, input logic c_in, output logic [3:0] S_LA,
output logic cout_LA, output logic pg, gg);
logic c1, c2, c3;
logic [3:0] p ,g;


assign p[0] = A[0] ^ B[0];
assign p[1] = A[1] ^ B[1];
assign p[2] = A[2] ^ B[2];
assign p[3] = A[3] ^ B[3];

assign g[0] = A[0] & B[0];
assign g[1] = A[1] & B[1];
assign g[2] = A[2] & B[2];
assign g[3] = A[3] & B[3];

assign c1 = (c_in & p[0]) | g[0];
assign c2 = (c_in & p[1] & p[0]) | (g[0] & p[1]) | g[1];
assign c3 = (c_in & p[0] & p[1] & p[2]) |( g[0] & p[1] & p[2]) | (g[1] & p[2]) | g[2];
//assign c4 = cin & p[0] & p[1] & p[2] & p[3] | g[0] & p[1] & p[2] & p[3] | g[1] & p[2] & p[3] | g[2] & p[3] | g[3]; 



full_adder_1 FA0(.x(A[0]), .y(B[0]), .z(c_in), .sum(S_LA[0]), .c());
full_adder_1 FA1(.x(A[1]), .y(B[1]), .z(c1), .sum(S_LA[1]), .c());
full_adder_1 FA2(.x(A[2]), .y(B[2]), .z(c2), .sum(S_LA[2]), .c());
full_adder_1 FA3(.x(A[3]), .y(B[3]), .z(c3), .sum(S_LA[3]), .c());


assign pg = p[0] & p[1] & p[2] & p[3];
assign gg = g[3] | (g[2] & p[3]) | (g[1] & p[3] & p[2]) | (g[0] & p[3] & p[2] & p[1]);

//?? = ?0 ? ?1 ? ?2 ? ?3
//?? = ?3 + ?2 ? ?3 + ?1 ? ?3 ? ?2 + ?0 ? ?3 ? ?2 ? ?1
endmodule

//call on module for 4 bit adder four times 
//?4 = ??0 + ?0 ? ??0
//?8 = ??4 + ??0 ? ??4 + ?0 ? ??0 ? ??4
//?12 = ??8 + ??4 ? ??8 + ??0 ? ??8 ? ??4 + ?0 ? ??8 ? ??4 ? ??0

