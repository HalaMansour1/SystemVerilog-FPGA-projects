`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2024 07:02:19 PM
// Design Name: 
// Module Name: Regfile
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


module Regfile( input logic clkE,resetE,ld_regE,
                 input logic [15:0] bus_valE,
                 input clk,
                 input logic [2:0] sr1mux_outE, [2:0] dr_outE,
                 input logic [2:0]irE,
                 output logic [15:0] sr1outE, [15:0] sr2outE

    );
    
    
	logic [15:0] currentReg[8];
	logic [7:0] currentLoad;
	
	//maybe always ff 
	//always_ff @(posedge clkE)
	always_comb
	begin
	if(ld_regE)
		begin
			case(dr_outE)
			3'b000:
			begin
			currentLoad[7:0] = 8'b00000001;
			end
			3'b001:
			begin
			currentLoad[7:0] = 8'b00000010;
			end
			3'b010:
			begin
			currentLoad[7:0] = 8'b00000100;
			end
			3'b011:
			begin
			currentLoad[7:0] = 8'b00001000;
			end
			3'b100:
			begin
			currentLoad[7:0] = 8'b00010000;
			end
			3'b101:
			begin
			currentLoad[7:0] = 8'b00100000;
			end
			3'b110:
			begin
			currentLoad[7:0] = 8'b01000000;
			end
			3'b111:
			begin
			currentLoad[7:0] = 8'b10000000;
			end
			endcase
		end
	else
		begin
			currentLoad[7:0] = 8'b00000000;
		end
	end
	
	
		load_reg #(.DATA_WIDTH(16)) r0 (.clk(clkE),.reset(resetE),.load(currentLoad[0]),.data_i(bus_valE),.data_q(currentReg[0][15:0]));
		load_reg #(.DATA_WIDTH(16)) r1 (.clk(clkE),.reset(resetE),.load(currentLoad[1]),.data_i(bus_valE),.data_q(currentReg[1][15:0]));
		load_reg #(.DATA_WIDTH(16)) r2 (.clk(clkE),.reset(resetE),.load(currentLoad[2]),.data_i(bus_valE),.data_q(currentReg[2][15:0]));
		load_reg #(.DATA_WIDTH(16)) r3 (.clk(clkE),.reset(resetE),.load(currentLoad[3]),.data_i(bus_valE),.data_q(currentReg[3][15:0]));
		load_reg #(.DATA_WIDTH(16)) r4 (.clk(clkE),.reset(resetE),.load(currentLoad[4]),.data_i(bus_valE),.data_q(currentReg[4][15:0]));
		load_reg #(.DATA_WIDTH(16)) r5 (.clk(clkE),.reset(resetE),.load(currentLoad[5]),.data_i(bus_valE),.data_q(currentReg[5][15:0]));
		load_reg #(.DATA_WIDTH(16)) r6 (.clk(clkE),.reset(resetE),.load(currentLoad[6]),.data_i(bus_valE),.data_q(currentReg[6][15:0]));
		load_reg #(.DATA_WIDTH(16)) r7 (.clk(clkE),.reset(resetE),.load(currentLoad[7]),.data_i(bus_valE),.data_q(currentReg[7][15:0]));
		// 2 8 by 1 mux , sr2 ( ir) and output of mux 
	
	mux8 sr2selection (
    .in0(currentReg[0][15:0]),
    .in1(currentReg[1][15:0]),
    .in2(currentReg[2][15:0]),
    .in3(currentReg[3][15:0]),
    .in4(currentReg[4][15:0]),
    .in5(currentReg[5][15:0]),
    .in6(currentReg[6][15:0]),
    .in7(currentReg[7][15:0]),
    .sel(irE[2:0]),
    .out(sr2outE)
);

mux8 sr1selection (
    .in0(currentReg[0][15:0]),
    .in1(currentReg[1][15:0]),
    .in2(currentReg[2][15:0]),
    .in3(currentReg[3][15:0]),
    .in4(currentReg[4][15:0]),
    .in5(currentReg[5][15:0]),
    .in6(currentReg[6][15:0]),
    .in7(currentReg[7][15:0]),
    .sel(sr1mux_outE),
    .out(sr1outE)
);
		
		
endmodule
