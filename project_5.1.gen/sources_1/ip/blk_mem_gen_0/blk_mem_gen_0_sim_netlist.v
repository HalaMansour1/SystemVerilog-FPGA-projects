// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Feb 21 00:40:52 2024
// Host        : DESKTOP-87UTL8B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top blk_mem_gen_0 -prefix
//               blk_mem_gen_0_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [15:0]dina;
  wire [15:0]douta;
  wire ena;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.51805 mW" *) 
  (* C_FAMILY = "spartan7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "spartan7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VHPlDkoDlWlBfBMvPBmGYmaek3s9hXXhjF28kllYPnaNm3TSnzzpXHWHc8Ye9/2L2yiQfJ1hTWou
Ia/zeQ8h9/dtr6QB5YkyW4wlb/LbMgXb+DGIXPSllNl0IMsRQIcQDbcQm1bO/nlhb+2pjxiuaQrl
DbvxoDwPs7z3LunRxsg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lmIhoX8hXuc7tNV1sXY1K2/gXL7Y7Hq73qQF7+x03UWWTRd3uhGmVQtOMVbhIW+66UkWUHiD26zL
fzqGor8bgSNGpSFyS11k4TwLQT4OfAMGO8C9Qmmh4+VENBnpS9TW+wHzCv8oUwht7xYtYRZvOvYK
F3fMppz2sBkUd1lciw98ZE/UmNkhqBuMfIYF43j45DEJ55PBhOZNg91Ls4v3qBHyBAaYPFFoMry3
d5Fw1PZyFQSEOSSpwgyds2aN0g6oIwl7zm0LJrM9VDAOxBUE50hk+oHr4jj8J8UhHQJnlEHm1Idm
rvxKygNKRvfSpa90NYxZJFYgqnrMYg+19+9aZA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VkyCjO2onoeZWEoYQ/4ue7X5mkHyTYVW9xjdoTsGS4GdP/Q64VaCZL/jr6R8DVDXPMnH7tRMrDpo
jpYBnyzSgOkfgqM+96ioC2fDyAaG4gYgGLmrBR6qK3/mxXwAZZX+GJ9R/eWXkc9h8xN+gsSSX6/M
jIQCgeT6q7PB4dWT6KY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Iub91V+TnhVlZCSLu6iKmFjix71y6/l83OPTs8uewWvkE7WcqYxEKi9fonXEkzAtWzuKwEUqnOlN
VBsNJqPUdKcd22q523mrdt89mpdosWD+hvZdO7ELhJniY5u9h49FFkubpN2JiUTcIcKEYxVNlds4
wyvaYUqbPVH5v2ooJwDdimS4GVn9HerCOgPwfshvQDNlMTxLcYju4v8BHMc5Rub9Q/ihvpQU74v2
ouZ9XIwA+C6pBLwvaqS8jE7HXOokgqJilaX/W/t+KEgiFry/txRTMU9WMD7tCN7lcfjCydmS3Lq+
3u6Hsr0S8BwNjcaDpZDnBTygUJd4JSqREnk33w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U46EWFmKmpZGaWfyL+dokyQtJtaOYsa7HCW/+fdtw9/yHKTWFpmqKBZngBj5rPkNhtTDDCJkqsYj
tUXg1j4tgIBaCQn9B0q/aG+B3gPLrudp9hLL25mVbsfiTzdekiV2hJMmhuMoavKKPJHC6zyW7kZi
80er82OQy8h+Df/fe6TRjH9xEt3/b80tRKUMbxkLfnnkAyyf1KfOhB6/uyI4mwXuQR+DsAbzybKR
YtXpOiW72tGrXTFlzcwbHamWZefqsilVpBw6V5dh33vYKGx50xwWpj76maAkpQrOpB7zufeldJe4
W1UOEN84AZdRTLkVSxamWo/wp8nP9fiGS/ItRw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qczgIJYpE/SzErzK7eWJBGcDFEzDLm8cKbwJbPXuM6YnJxx44W+E60R3war7K2QGFAkOoCDUtDC7
SghJGF32btaDLzeKm0tQ669sBtQmMIaBrlt7I9QBkNM8zN9GL92qxNC9o3UVWMOYy5BmH8nUPgcE
O6lRubeltlrTuDe7UJQ2nEPHcXjpUJJ8dxktyW+LovBy1OxW8g4GRAsmEJsoOEg0HuDdWcc4IshJ
PvwPJ7LblELAKsdkSt65y9VaklaEm7MlH4ImlgIa74TgRmutLUbWxM1QYhGE5rAzFhGU5i3RJOdx
L3N7GGGvLMW2z9NSHbIFX+/eNII9fNJ9nZbgLA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ti1NUgDv8YPk90APMwfu/mRr38QYwAxZfv0T6zQ89YS55t2EquEGVqrEafYX6rTydLOw8le1Oucv
f2oERpSSSTih/ScZneSZmuPE/Zh2BU1Ajv0j+/+0uEWXU+5lLPbDJjnapTmJXih1MYPf0SHpZZmE
BKj2IEBI9MPZlh6bxpa5BWJnyPdAvHf+UNaMXU9+pmbtrzUVebql4mFJu45Z3+ehmFY4FBW3zXMF
44C4TlHACLwL3vHVMCVfeKhgdVDbpE+/IFhTStz7mZ9h9RKGanQcs6YDVM1R+2RKA1QT1fX4FiQc
1V+FGmrm1ujxmFGXwpfNKByVlfCY0oWhRJCYYQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HuEXFK0NXt09xU2yxxjng1OLsT+ZEM4EhqBgpr9D2ljw2vDaMBrqEsRQTc2B9soDq3ewDduHJXBd
OGYxkPnoN6LhjULtB2nTgjcH6NxA4puZ1ZNcndDndVBo8rTW5W1OqHq6InAG0CqPpTIkuqz3ECPl
EysI++MCDfH6tIzlekxJFIJ1McJsTq5rFuLzMMcrmkBxgcayDpOcCFuzZzCczxmt/cCCIKmDybwT
OQXmOcLJoYLP4sFu6R9c6xO8i6p++crv2N3eIxZHKbek9xBBZqQM9EYuEtsbkqAs9XZpa16i5njR
BDFxTKcP6r7JgFALJE89AZhBbate5JXWp0v4ECZD18aEL17CipwcWPutNMdG1apzSPP5y59n7rMG
yxBPz1gKHc3Emkl4WcO0hjICxqmO6dMXoY8JvBSf6ry2l0sH9Ihr3Bq5WWmlhPHnoaNr5jl//vNe
KfToWtn97eoVSt1LnmXXnSpdigbHr0UIg8AdkpdkuNRaWdVicDdgSo49

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mokwst2bn6UxD6V9UdIgCIG1QQ/d0FiJqYGOTI2eHPV6YElaLjnJ8DnQmZnGS95o3x93FDOoa58C
RwYsX1fVoVtXkj1LuZq0k7q9vEe4T8xMjpkeYtIHY9k0Xhy1Lq/xRlfzGAf9fvf9e+f4r7aR/Sb/
uCZxxugG5niTwLENY1n3NthYL0jvo8Fmdw4Qg0nTCGWlVCws+09K0g9/lx6I9EcuHHemcHO3fOZG
lMc4NaPNozKwnyDMoWUkwiVxyFEPFaQLNYqzjvR+CqrWfhFLo96JWhL+eaDoNuZoBVYQtNH5ZwBL
BoO27Pw10lgcReGlZBz3BLO7T4ddynCx0+eSnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PiP7AjOQqqouyQMoBQqgWIDhUSViq94rIvGiIJ/UKMDspM/yXw1caE8AhWHTjYckC4yLpPAz5P6s
1Z6flzDPrzVwg4e59X2cc4IMCHhedna0rDO804njcc6amRDTeLsMLTkWfvomB4xwszm2AgT+PRnB
WHd09ZUDVFjiBXT+Oa9AicgGJHrX3w823yBPuAa704kje/SzgtiDpcTU1eLmLhLW7LpEd9KIHd9s
ER7Uk9Orws0Kq9PMTqMX4hMn5K5mFakOeOURiEbUjdv5RiIJ2g/PlQXSItM8fHsBTQa6fOaJwQTI
vHwK3a8ZBHpfT1YH+n7wNiNUZwD4SFXm1QVx4g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ul5ZfTHJwMctaNhYRortUZizYMPYRef7uYqPSuMkxsArnxI/cjGh+KRMwzV86hyp/6TXSJIjm5ec
2wX2UONdPN+DOJ84jYC4JbgJQrPnTj7ioD8uLX/WlyPcQzyF5keqFgj5eR5s13FskVWCuAWf5m9w
mhFEKFjVXDAr7gVgAJh/hL8P6Psrnf+LGfiM8JhnDepsHEYykGlpD3fzru2BGgqHWqPqFMcnyVGl
vysaIXiJz/eYKvO8RGcgd3DJAM/wPm9A0m/DWcmSnczOgTjoqkHcBg2H5uJMLvufzmjImi6LYEqq
v04ESDEN31cSUzqUYcayvMFOnI/WNsWbFIa5+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18640)
`pragma protect data_block
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
+A==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
