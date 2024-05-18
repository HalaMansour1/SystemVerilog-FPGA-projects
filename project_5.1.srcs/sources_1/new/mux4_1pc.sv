`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/21/2024 03:26:04 AM
// Design Name: 
// Module Name: mux4_1pc
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

module mux4_1pc(input logic [15:0] in1, in2, in3, in4, 
    input logic [1:0] select,
 output logic [15:0] out);

always_comb
    begin 
         case(select)
         2'b00 : out = in1;
         2'b01 : out = in2;
         2'b10 : out = in3;
         2'b11 : out = in4;
         default: out = 2'bXX;
    endcase
end

endmodule

// modules for all sign extenders 
module sext6to16(
  input logic [5:0] value,
  output logic [15:0] extended_value
);

  always_comb begin
    extended_value = {{10{value[5]}}, value};
  end

endmodule

module sext9to16(
  input logic [8:0] value,
  output logic [15:0] extended_value
);

  always_comb begin 
    extended_value = {{7{value[8]}}, value};
  end

endmodule

module sext11to16 (
  input logic [10:0] value,
  output logic [15:0] extended_value
);

  always_comb begin
  //
    extended_value = {{5{value[10]}}, value};
  end

endmodule

module sext5to16 (
  input logic [4:0] value,
  output logic [15:0] extended_value
);

  always_comb begin
    extended_value = {{11{value[4]}}, value};
  end

endmodule

module adder(
  input logic [15:0] operand1,
  input logic [15:0] operand2,
  output logic [15:0] sum
);

  assign sum = operand1 + operand2;

endmodule
