//-----------------------------------------------
//	module name: cCopyFork2_32b
//	author: Tong Fu, Lingzhuang Zhang
//	version: 1st version (2023-03-09)
//-----------------------------------------------

`timescale 1ns / 1ps

module cCopyFork2_32b();

input i_drive;
input i_freeNext0,i_freeNext1;
input rst;
input [31:0] i_data_32;

output o_free;
output o_driveNext0,o_driveNext1;
output [31:0] o_data0,o_data1;

wire w_driveNext;

//control signal
DEL1M4HM outdelay0(.A(i_drive), .Z(w_driveNext));
DEL1M4HM outdelay1(.A(w_dirveNext), .Z(o_driveNext0));
DEL1M4HM outdelay1(.A(w_dirveNext), .Z(o_driveNext1));

assign o_free = i_freeNext0 | i_freeNext1;

assign o_data0_32 = i_data_32;
assign o_data1_32 = i_data_32;


endmodule

