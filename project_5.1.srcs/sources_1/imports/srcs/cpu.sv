//------------------------------------------------------------------------------
// Company: 		 UIUC ECE Dept.
// Engineer:		 Stephen Kempf
//
// Create Date:    
// Design Name:    ECE 385 Given Code - SLC-3 core
// Module Name:    SLC3
//
// Comments:
//    Revised 03-22-2007
//    Spring 2007 Distribution
//    Revised 07-26-2013
//    Spring 2015 Distribution
//    Revised 09-22-2015 
//    Revised 06-09-2020
//	  Revised 03-02-2021
//    Xilinx vivado
//    Revised 07-25-2023 
//    Revised 12-29-2023
//------------------------------------------------------------------------------

module cpu (
    input   logic        clk,
    input   logic        reset,

    input   logic        run_i,
    input   logic        continue_i,
    output  logic [15:0] hex_display_debug,
    output  logic [15:0] led_o,
   
    input   logic [15:0] mem_rdata,
    
    
    output  logic [15:0] mem_wdata,
    output  logic [15:0] mem_addr,
    output  logic        mem_mem_ena,
    output  logic        mem_wr_ena
    
);

 logic [15:0] bus_val;
logic [15:0] pcval;
logic [15:0] mdr_val;
logic [15:0] mar_val;

// Internal connections
logic ld_mar; 
logic ld_mdr; 
logic ld_ir; 
logic ld_ben; 
logic ld_cc; 
logic ld_reg; 
logic ld_pc; 
logic ld_led;

logic gate_pc;
logic gate_mdr;
logic gate_alu; 
logic gate_marmux;

logic [1:0] pcmux;
logic       drmux;
logic       sr1mux;
logic       sr2mux;
logic       addr1mux;
logic [1:0] addr2mux;
logic [1:0] aluk;
logic       mio_en;

logic [15:0] mdr_in;
logic [15:0] mar; 
logic [15:0] mdr;
logic [15:0] ir;
logic [15:0] pc;

logic [15:0] intomux1 ;
logic [15:0] intomux2 ;
logic [15:0] intomux3 ;
logic [15:0] intosr2mux;

//temp values used for data out of mar and mdr

logic [15:0] mdr_data;
logic [15:0] addermuxout4;
logic [15:0] addermuxout2;
logic [15:0] resultadder;
logic [15:0] sr2muxout2;
logic [15:0] aluResult;
logic [2:0] sr1mux_out;
logic [2:0] dr_out;
logic Zeroflag;
logic ben;
logic [2:0] NZPout;
// declaring outspust of the register file , should this be input logic ? 
logic [15:0] sr2out;
logic [15:0] sr1out;

//changed assign
assign mem_addr = mar;
assign mem_wdata = mdr;

// State machine, you need to fill in the code here as well
// .* auto-infers module input/output connections which have the same name
// This can help visually condense modules with large instantiations, 
// but can also lead to confusing code if used too commonly
control cpu_control (
    .*
);


assign led_o = ir;
assign hex_display_debug = mdr_data;

load_reg #(.DATA_WIDTH(16)) ir_reg (
    .clk    (clk),
    .reset  (reset),

    .load   (ld_ir),
    .data_i (bus_val),

    .data_q (ir)
);

load_reg #(.DATA_WIDTH(16)) pc_reg (
    .clk(clk),
    .reset(reset),

    .load(ld_pc),
    
    //takes in pc value incremented for data in
    .data_i(pcval),

    .data_q(pc)
);
//assign temp = pc + 1 ; 
//MAR register instantiation
load_reg #(.DATA_WIDTH(16)) mar_reg (
    .clk    (clk),
    .reset  (reset),

    .load   (ld_mar),
    .data_i (bus_val),

    .data_q (mar)
);

//MDR register instantation 
load_reg #(.DATA_WIDTH(16)) mdr_reg (
    .clk(clk),
    .reset(reset),

    .load(ld_mdr),
    .data_i(mdr_val),

    .data_q(mdr)
);

//instantiate mux module 
//pass in all 4 possible values of data
//select chooses possible value according to the gat {}
//output is bus_val


mux4bus bus_val_select(.in1(pc), .in2(aluResult), .in3(resultadder), .in4(mdr),.gates({gate_pc,gate_alu,gate_marmux,gate_mdr}), .outbus(bus_val));
//ALU IS ZEROOOOOOOOOOOO, CHANGE NEXT WEEK
mux4_1pc pc_mux(.in1(pc+1), .in2(bus_val), .in3(resultadder), .in4(16'h0000),.select(pcmux), .out(pcval));
mux2_1 mdr_mux(.in1(mem_rdata), .in2(bus_val), .select(mio_en), .out(mdr_val));

//instantiating sign extenders
sext6to16 sext5 (
  .value(ir[5:0]),
  .extended_value(intomux1)
);

sext9to16 sext8 (
  .value(ir[8:0]),
  .extended_value(intomux2)
);

sext11to16 sext10 (
  .value(ir[10:0]),
  .extended_value(intomux3)
);

sext5to16 sext4 (
  .value(ir[4:0]),
  .extended_value(intosr2mux)
);
// instantiation for 4x1 mux and 2x1 mux into the adder , 
mux4_1pc muxforadder4(.in1(16'h0000), .in2(intomux1), .in3(intomux2), .in4(intomux3),.select(addr2mux), .out(addermuxout4));
// have not made sr1out yet 
mux2_1 muxforadder2(.in1(pc), .in2(sr1out), .select(addr1mux), .out(addermuxout2));

// calling on adder module
adder adderunit(.operand1(addermuxout4),.operand2(addermuxout2),.sum(resultadder));

//creatung instantiation for sr2mux
//changed could be wrong 
mux2_1 sr2mux_alu(.in1(sr2out), .in2(intosr2mux), .select(sr2mux), .out(sr2muxout2));

// instantiation for th alu unit 
alu_unit alu(
    .operandA(sr1out),
    .operandB(sr2muxout2),
    .operation(aluk),
    .result(aluResult),
    .zero(Zeroflag)
  );
 
 // instantiating the 3 bit muxes that wil go to the register file 
 mux2_1_3bits sr1mux_3bits(.in1(ir[11:9]), .in2(ir[8:6]), .select(sr1mux), .out(sr1mux_out));
 mux2_1_3bits DRmux_3bits(.in1(ir[11:9]), .in2(3'b111), .select(drmux), .out(dr_out));
 
 //instatntiate register file 
 Regfile regfile (
        .clkE(clk), // Connect clk from ParentModule to clk of Regfile
        .resetE(reset), // Connect reset from ParentModule to reset of Regfile
        .ld_regE(ld_reg),
        .bus_valE(bus_val),
        .sr1mux_outE(sr1mux_out),
        .dr_outE(dr_out),
        .irE(ir[2:0]),
        .sr1outE(sr1out), // Connect sr1out from Regfile to ParentModule's output
        .sr2outE(sr2out)  // Connect sr2out from Regfile to ParentModule's output
    );
    

 nzp_logic nzp_instance (
        .value(bus_val),      // Connect to value_input
        .clk(clk),              // Connect to clock
        .loadcc(ld_cc),  // Connect to load_cc_signal
        .reset(reset),     // Connect to reset_signal
        .NZP(NZPout)          // Connect to nzp_output
    );

assign ben = (ir[11]& NZPout[2] ) || (ir[10]& NZPout[1]) ||(ir[9]& NZPout[0] );

endmodule