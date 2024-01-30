//-----------------------------------------------
//	module name: cCondfork5_32b
//	author: Tong Fu, Lingzhuang Zhang
//	version: 1st version (2022-11-02)
//-----------------------------------------------

`timescale 1ns / 1ps

module cCondFork5_32b(
i_drive,i_freeNext0,i_freeNext1,i_freeNext2,i_freeNext3,i_freeNext4,
valid0,valid1,valid2,valid3,valid4,
rst,i_data_32,
o_free,o_driveNext0,o_driveNext1,o_driveNext2,o_driveNext3,o_driveNext4,
o_data0_32,o_data1_32,o_data2_32,o_data3_32,o_data4_32);

input i_drive;
input i_freeNext0,i_freeNext1,i_freeNext2,i_freeNext3,i_freeNext4;
input valid0,valid1,valid2,valid3,valid4;
input rst;
input [31:0] i_data_32;

output o_free;
output o_driveNext0,o_driveNext1,o_driveNext2,o_driveNext3,o_driveNext4;
output [31:0] o_data0_32,o_data1_32,o_data2_32,o_data3_32,o_data4_32;

wire [1:0] w_outRRelay_2,w_outARelay_2;
wire w_fire;
wire w_freeNext;
wire w_driveNext0,w_driveNext1;
reg [31:0] r_data_32;

//pipeline
sender sender(
	.i_drive(i_drive),
	.o_free(free),
	.outR(w_outRRelay_2[0]),
	.i_free(w_driveNext0),
	.rst(rst)
);

relay relay0(
	.inR(w_outRRelay_2[0]),
	.inA(w_outARelay_2[0]),
	.outR(w_outRRelay_2[1]),
	.outA(w_outARelay_2[1]),
	.fire(w_fire),
	.rst(rst)
);

receiver receiver(
	.inR(w_outRRelay_2[1]),
	.inA(w_outARelay_2[1]),
	.i_freeNext(w_freeNext),
	.rst(rst)
);

//data
always@(posedge w_fire or negedge rst)
begin
    if(!rst) begin
		r_data_32 <= 32'b0;
		end
	else begin
		r_data_32 <= i_data_32;
		end
end

assign o_data0_32 = r_data_32;
assign o_data1_32 = r_data_32;
assign o_data2_32 = r_data_32;
assign o_data3_32 = r_data_32;
assign o_data4_32 = r_data_32;

//control signal
delay2U outdelay0(.inR(w_fire), .outR(w_driveNext0));
assign o_driveNext0 = w_driveNext0 & valid0;
assign o_driveNext1 = w_driveNext0 & valid1;
assign o_driveNext2 = w_driveNext0 & valid2;
assign o_driveNext3 = w_driveNext0 & valid3;
assign o_driveNext4 = w_driveNext0 & valid4;
assign w_freeNext = i_freeNext0 | i_freeNext1 | i_freeNext2 | i_freeNext3 | i_freeNext4;

endmodule

