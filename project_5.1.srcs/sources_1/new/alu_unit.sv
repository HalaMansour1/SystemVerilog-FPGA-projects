`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2024 07:06:15 PM
// Design Name: 
// Module Name: alu_unit
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


module alu_unit(
 input logic [15:0] operandA,
  input logic [15:0] operandB,
  input logic [1:0] operation, // 2-bit operation for 4 operations
  output logic [15:0] result,
  output logic zero
);

  always_comb begin
    case(operation)
      2'b00: result = operandA + operandB; // Addition
      2'b01: result = operandA & operandB; // AND
      2'b10: result = ~ operandA ; // NOT A
      2'b11: result = operandA; // pass in operand A
      default: result = 16'b0;              // Default: zero
    endcase

    zero = (result == 16'b0); // Output zero flag
  end

endmodule