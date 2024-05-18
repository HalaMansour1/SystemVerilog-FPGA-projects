`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/21/2024 12:53:37 AM
// Design Name: 
// Module Name: testbenchlab5
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

module testbenchlab5(); //even though the testbench doesn't create any hardware, it still needs to be a module

//	timeunit 10ns;	// This is the amount of time represented by #1 
//	timeprecision 1ns;

	// These signals are internal because the processor will be 
	// instantiated as a submodule in testbench.
	  logic	    clk;
	  logic        reset; 

	// inputs should be synchronized in top level
	  logic        run_i;
	  logic        continue_i;
	  logic [15:0] sw_i;

	 logic [15:0] led_o;
	 logic [7:0]  hex_seg_o;
	 logic [3:0]  hex_grid_o;
	 logic [7:0]  hex_seg_debug;
	 logic [3:0]  hex_grid_debug;

	  logic [15:0] sram_rdata;
	 logic [15:0] sram_wdata;
	 logic [15:0] sram_addr;
	 logic        sram_mem_ena;
	 logic        sram_wr_ena;
	 



	 logic [7:0]  hex_seg_left;
	 logic [3:0]  hex_grid_left;
	 logic [7:0]  hex_seg_right;
	 logic [3:0]  hex_grid_right;
			

	// To store expected results
	logic [15:0] pc;
	logic [15:0] ir;
	logic [15:0] mar;
	logic [15:0] mdr;
	
	// Instantiating the DUT (Device Under Test)
	// Make sure the module and signal names match with those in your design
	// Note that if you called the 8-bit version something besides 'Processor'
	// You will need to change the module name
	processor_top processor_top(.*);	

	assign pc = processor_top.slc3.cpu.pc;
	assign ir = processor_top.slc3.cpu.ir;
	assign mar = processor_top.slc3.cpu.mar;
	assign mdr = processor_top.slc3.cpu.mdr;

	initial begin: CLOCK_INITIALIZATION
		clk = 0;
	end 

	// Toggle the clock
	// #1 means wait for a delay of 1 timeunit, so simulation clock is 50 MHz technically 
	// half of what it is on the FPGA board 

	// Note: Since we do mostly behavioral simulations, timing is not accounted for in simulation, however
	// this is important because we need to know what the time scale is for how long to run
	// the simulation
	always begin : CLOCK_GENERATION
		#1 clk = ~clk;
	end
	assign sw_i = 0;
	
	

	// Testing begins here
	// The initial block is not synthesizable on an FPGA
	// Everything happens sequentially inside an initial block
	// as in a software program

	// Note: Even though the testbench happens sequentially,
	// it is recommended to use non-blocking assignments for most assignments because
	// we do not want any dependencies to arise between different assignments in the 
	// same simulation timestep. The exception is for reset, which we want to make sure
	// happens first. 
	initial begin: TEST_VECTORS
	 repeat (4) @(posedge clk);
		reset <= 1;
	 repeat (4) @(posedge clk);
		reset <= 0;
		
    	sw_i <= 16'h009C;
	
	 repeat (4) @(posedge clk);
		run_i <= 1;
	 repeat (4) @(posedge clk);
		run_i <= 0;
		
	repeat (4) @(posedge clk);
		continue_i <= 1;
	 repeat (4) @(posedge clk);
		continue_i <= 0;
		//
//		F <= 3'b110;	// Change F and R
//		R <= 2'b01;

//		repeat (4) @(posedge Clk);
//		Execute <= 1;	// Toggle Execute
//		repeat (4) @(posedge Clk);
//		Execute <= 0;

//		repeat (11) @(posedge Clk);
//		Execute <= 1;
	
		// Aval is expected to be 8'h33 XOR 8'h55
		// Bval is expected to be the original 8'h55
		
		//These are called 'immediate' assertions, because they assert if a condition is true
		//at the time of execution.
		


	end

endmodule
