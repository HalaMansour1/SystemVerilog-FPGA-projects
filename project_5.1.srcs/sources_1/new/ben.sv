`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/28/2024 12:49:41 PM
// Design Name: 
// Module Name: ben
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


module nzp_logic(
input logic [15:0] value , 
input logic clk ,
input logic reset,
input logic loadcc,
output logic [2:0] NZP
);
//always_Ff   
always_ff @(posedge clk) begin
if(reset)begin 
    NZP <= 3'b000;
   end else if (loadcc) begin
        if (value == 16'b0) begin
            NZP <= 3'b010; // Zero
        end else if (value[15] == 1'b1) begin
            NZP <= 3'b100; // Negative
        end else begin //if ((value[15] == 1'b0) && (value!=16'b0000)) begin
            NZP <= 3'b001; // Positive
        end
    end
end

endmodule