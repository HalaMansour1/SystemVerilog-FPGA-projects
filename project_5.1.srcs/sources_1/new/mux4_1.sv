`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/21/2024 02:20:49 AM
// Design Name: 
// Module Name: mux4_1
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


module mux4_1(input logic [15:0] in1, in2, in3, in4, 
    input logic [3:0] select,
 output logic [15:0] out);

always_comb
    begin 
         case(select)
         4'b1000 : out = in1;
         4'b0100 : out = in2;
         4'b0010 : out = in3;
         4'b0001 : out = in4;
         default: out = 4'bXXXX;
    endcase
end

endmodule