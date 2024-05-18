`timescale 1ns / 1ps

module mux8(
    input logic [15:0] in0,
    input logic [15:0] in1,
    input logic [15:0] in2, 
    input logic [15:0] in3,
    input logic [15:0] in4, 
    input logic [15:0] in5,
    input logic [15:0] in6, 
    input logic [15:0] in7, 
    input logic [2:0] sel,
    output logic [15:0] out      
    );
    
always_comb begin
    case(sel)
        3'b000: out = in0;
        3'b001: out = in1;
        3'b010: out = in2;
        3'b011: out = in3;
        3'b100: out = in4;
        3'b101: out = in5;
        3'b110: out = in6;
        3'b111: out = in7;
        default: out = 1'b0; // Default case, might not be necessary as sel is 3 bits
    endcase
end

endmodule
