`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/21/2024 02:40:08 AM
// Design Name: 
// Module Name: mux2_1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux2_1(input logic [15:0] in1, in2, 
    input logic select,
    output logic [15:0] out);
    always_comb begin
    case(select)
        1'b0: out = in1;
        1'b1: out = in2;
        default: out = 1'b0; // Default case, not strictly necessary for 1-bit sel
    endcase
end
endmodule
 

module mux2_1_3bits(input logic [2:0] in1, in2, 
    input logic select,
 output logic [2:0] out);
always_comb begin
    case(select)
        1'b0: out = in1;
        1'b1: out = in2;
        default: out = 1'b0; // Default case, not strictly necessary for 1-bit sel
    endcase
end
endmodule

