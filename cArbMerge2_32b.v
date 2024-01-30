//-----------------------------------------------
//	module name: clickArbMerge2_32b
//	author: Tong Fu, Lingzhuang Zhang
//	version: 1st version (2022-11-17)
//-----------------------------------------------

module cArbMerge2_32b(
i_drive0,i_drive1,i_data0_32,i_data1_32,
i_freeNext,rst,
o_free0,o_free1,o_driveNext,o_data_32
);

//input & output port
input i_drive0;
input i_drive1;
input [31:0] i_data0_32,i_data1_32;
input i_freeNext;
input rst;

output o_free0;
output o_free1;
output o_driveNext;
output [31:0] o_data_32;

wire w_firstFire_1,w_secondFire_1,w_sendFire_1;
wire w_free0Next,w_free1Next;
wire w_drive0Next,w_drive1Next;
wire w_firstReset,w_secondReset;
wire w_firstTrig,w_secondTrig;
wire w_firstReq,w_secondReq;
wire [1:0] w_validation_2;
wire w_isValid;
wire RoundAgain,w_updateTrig;
wire pmt;
wire w_sendTrig,w_sendDrive;
wire w_sendFree,w_sendPreDrive,w_roundTrig;
wire [31:0] w_data0_32,w_data1_32,w_data_32;
wire [1:0] w_priority_2;

reg [31:0] r_data0_32,r_data1_32,r_data_32;
reg [1:0] r_priority_2;

//firstFifo
cPmtFifo1 firstPmtFifo(
.i_drive(i_drive0),
.i_freeNext(w_free0Next),
.o_free(o_free0),
.o_driveNext(w_drive0Next),
.o_fire_1(w_firstFire_1),
.pmt(pmt),
.rst(rst)
);

always@(posedge w_firstFire_1 or negedge rst)
begin
    if(!rst) begin
		r_data0_32 <= 32'b0;
		end
	else begin
		r_data0_32 <= i_data0_32;
		end
end
assign w_data0_32 = r_data0_32;
assign w_firstTrig = w_firstFire_1 | w_firstReset;
contTap firstTap(
.trig(w_firstTrig),
.req(w_firstReq),
.rst(rst)
);

//secondFifo
cPmtFifo1 secondPmtFifo(
.i_drive(i_drive1),
.i_freeNext(w_free1Next),
.o_free(o_free1),
.o_driveNext(w_drive1Next),
.o_fire_1(w_secondFire_1),
.pmt(pmt),
.rst(rst)
);

always@(posedge w_secondFire_1 or negedge rst)
begin
    if(!rst) begin
		r_data1_32 <= 32'b0;
		end
	else begin
		r_data1_32 <= i_data1_32;
		end
end
assign w_data1_32 = r_data1_32;
assign w_secondTrig = w_secondFire_1 | w_secondReset;
contTap secondTap(
.trig(w_secondTrig),
.req(w_secondReq),
.rst(rst)
);

//priority
always@(posedge w_updateTrig or negedge rst)
begin
	if(!rst)
		r_priority_2 = 2'b00;
	else
	    if(r_priority_2 == 2'b00)
            r_priority_2 = 2'b10;
        else
		if(r_priority_2 == 2'b10)
			r_priority_2 = 2'b01;
		else
		if(r_priority_2 == 2'b01)
			r_priority_2 = 2'b10;
		else
			r_priority_2 = 2'b00;
end 
assign w_priority_2 = r_priority_2;

//dir validation
assign w_validation_2[0] = w_priority_2[0]  & w_firstReq;
assign w_validation_2[1] = w_priority_2[1]  & w_secondReq;
assign w_isValid = w_validation_2[0] | w_validation_2[1];

//Mux
assign w_data_32 = (w_validation_2 == 2'b10) ? w_data0_32 :
                    ((w_validation_2 == 2'b01) ? w_data1_32 : 32'b0 );

//lock
assign pmt = ~(w_firstReq | w_secondReq);

//RoundAgain
assign RoundAgain = w_updateTrig & ~pmt;
assign w_sendTrig = RoundAgain | w_drive0Next | w_drive1Next;

delay1U delay0(
.inR(w_sendTrig),
.outR(w_sendPreDrive)
);

wire w_roundDrive;
assign w_sendDrive = w_sendPreDrive & w_isValid;
assign w_roundDrive = w_sendPreDrive & (~w_isValid);

delay1U delay1(
.inR(w_roundDrive),
.outR(w_roundTrig)
);

assign w_updateTrig = w_sendFree | w_roundTrig;

//resetTrig
assign w_firstReset = w_priority_2[0]  & w_firstReq & w_sendFree; 
assign w_secondReset = w_priority_2[1]  & w_secondReq & w_sendFree;
 
//sendFifo
cFifo1 sendFifo(
.i_drive(w_sendDrive),
.i_freeNext(i_freeNext),
.o_free(w_sendFree),
.o_driveNext(o_driveNext),
.o_fire_1(w_sendFire_1),
.rst(rst)
);

always@(posedge w_sendFire_1 or negedge rst)
begin
    if(!rst) begin
		r_data_32 <= 32'b0;
		end
	else begin
		r_data_32 <= w_data_32;
		end
end
assign o_data_32 = r_data_32;
endmodule
