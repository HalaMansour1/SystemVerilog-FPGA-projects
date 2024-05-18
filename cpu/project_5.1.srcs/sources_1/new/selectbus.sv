`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/29/2024 01:50:00 PM
// Design Name: 
// Module Name: selectbus
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

module mux4bus(input logic [15:0] in1, in2, in3, in4, 
    input logic [3:0] gates,
 output logic [15:0] outbus);

always_comb
    begin 
         case(gates)
         4'b1000 : outbus = in1;
         4'b0100 : outbus = in2;
         4'b0010 : outbus = in3;
         4'b0001 : outbus = in4;
         default: outbus = 4'bXX;
    endcase
end

endmodule
