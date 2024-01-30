`timescale 1ns / 1ps

//指令包信息待定
//跳转时指令数据复位
//旁路仍然存在有问题

module BracnchDetect(
    input rstn,
//CFifo1
//from decode
input  wire  [3:0]   i_BranchCount_4;        
//from dep check
//data
  input wire [72:0]  i_instFromDependenceCheck0_73, 
  input wire [72:0]  i_instFromDependenceCheck1_73,
  input wire [72:0]  i_instFromDependenceCheck2_73,
  input wire [72:0]  i_instFromDependenceCheck3_73,
  input wire [72:0]  i_instFromDependenceCheck4_73,
  input wire [72:0]  i_instFromDependenceCheck5_73,
  input wire [72:0]  i_instFromDependenceCheck6_73,
  input wire [72:0]  i_instFromDependenceCheck7_73,
  input wire [72:0]  i_instFromDependenceCheck8_73, 
  input wire [72:0]  i_instFromDependenceCheck9_73,
  input wire [72:0]  i_instFromDependenceCheck10_73,
  input wire [72:0]  i_instFromDependenceCheck11_73,
  input wire [72:0]  i_instFromDependenceCheck12_73,
  input wire [72:0]  i_instFromDependenceCheck13_73,
  input wire [72:0]  i_instFromDependenceCheck14_73,
  input wire [72:0]  i_instFromDependenceCheck15_73,

  output wire [72:0]  o_instToIssue0_73, 
  output wire [72:0]  o_instToIssue1_73, 
  output wire [72:0]  o_instToIssue2_73, 
  output wire [72:0]  o_instToIssue3_73, 
  output wire [72:0]  o_instToIssue4_73, 
  output wire [72:0]  o_instToIssue5_73, 
  output wire [72:0]  o_instToIssue6_73, 
  output wire [72:0]  o_instToIssue7_73, 
  output wire [72:0]  o_instToIssue8_73, 
  output wire [72:0]  o_instToIssue9_73, 
  output wire [72:0]  o_instToIssue10_73, 
  output wire [72:0]  o_instToIssue11_73, 
  output wire [72:0]  o_instToIssue12_73, 
  output wire [72:0]  o_instToIssue13_73, 
  output wire [72:0]  o_instToIssue14_73, 
  output wire [72:0]  o_instToIssue15_73, 
 
 output wire [3:0] o_FirstBranchIndex_4;
//Decoder
input wire  [3:0]   i_BranchCount_4

//signal
  input wire         i_DriveFromDependenceCheck,
  



  output wire        o_FreeToDepdenceCheck,







// CFifo 2
     //from bypass
     //signal part
    input wire  i_DriveFromBypass0L_1,
    input wire  i_DriveFromBypass1L_1,  
    input wire  i_DriveFromBypass2L_1,
    input wire  i_DriveFromBypass3L_1,
    input wire  i_DriveFromBypass5L_1,
    input wire  i_DriveFromBypass6L_1,
    input wire  i_DriveFromBypass7L_1,
    input wire  i_DriveFromBypass8L_1,
    input wire  i_DriveFromBypass9L_1,
    input wire  i_DriveFromBypass10L_1,
    input wire  i_DriveFromBypass11L_1,
    input wire  i_DriveFromBypass12L_1,
    input wire  i_DriveFromBypass13L_1,
    input wire  i_DriveFromBypass14L_1,
    input wire  i_DriveFromBypass15L_1,
    input wire  i_DriveFromBypassLsuL_1,
    input wire  i_DriveFromBypassCsrL_1,
    input wire  i_DriveFromBypassMulL_1,
    input wire  i_DriveFromBypassDivL_1,
    
    input wire  i_DriveFromBypass0R_1,
    input wire  i_DriveFromBypass1R_1,  
    input wire  i_DriveFromBypass2R_1,
    input wire  i_DriveFromBypass3R_1,
    input wire  i_DriveFromBypass5R_1,
    input wire  i_DriveFromBypass6R_1,
    input wire  i_DriveFromBypass7R_1,
    input wire  i_DriveFromBypass8R_1,
    input wire  i_DriveFromBypass9R_1,
    input wire  i_DriveFromBypass10R_1,
    input wire  i_DriveFromBypass11R_1,
    input wire  i_DriveFromBypass12R_1,
    input wire  i_DriveFromBypass13R_1,
    input wire  i_DriveFromBypass14R_1,
    input wire  i_DriveFromBypass15R_1,
    input wire  i_DriveFromBypassLsuR_1,
    input wire  i_DriveFromBypassCsrR_1,
    input wire  i_DriveFromBypassMulR_1,
    input wire  i_DriveFromBypassDivR_1,
    
    output wire  o_FreeToBypass0L_1,
    output wire  o_FreeToBypass1L_1,
    output wire  o_FreeToBypass2L_1,
    output wire  o_FreeToBypass3L_1,
    output wire  o_FreeToBypass4L_1,
    output wire  o_FreeToBypass5L_1,
    output wire  o_FreeToBypass6L_1,
    output wire  o_FreeToBypass7L_1,
    output wire  o_FreeToBypass8L_1,
    output wire  o_FreeToBypass9L_1,
    output wire  o_FreeToBypass10L_1,
    output wire  o_FreeToBypass11L_1,
    output wire  o_FreeToBypass12L_1,
    output wire  o_FreeToBypass13L_1,
    output wire  o_FreeToBypass14L_1,
    output wire  o_FreeToBypass15L_1,
    output wire  o_FreeToBypassLsuL_1,
    output wire  o_FreeToBypassCsrL_1,
    output wire  o_FreeToBypassMulL_1,
    output wire  o_FreeToBypassDivL_1,

    output wire  o_FreeToBypass0R_1,
    output wire  o_FreeToBypass1R_1,
    output wire  o_FreeToBypass2R_1,
    output wire  o_FreeToBypass3R_1,
    output wire  o_FreeToBypass4R_1,
    output wire  o_FreeToBypass5R_1,
    output wire  o_FreeToBypass6R_1,
    output wire  o_FreeToBypass7R_1,
    output wire  o_FreeToBypass8R_1,
    output wire  o_FreeToBypass9R_1,
    output wire  o_FreeToBypass10R_1,
    output wire  o_FreeToBypass11R_1,
    output wire  o_FreeToBypass12R_1,
    output wire  o_FreeToBypass13R_1,
    output wire  o_FreeToBypass14R_1,
    output wire  o_FreeToBypass15R_1,
    output wire  o_FreeToBypassLsuR_1,
    output wire  o_FreeToBypassCarR_1,
    output wire  o_FreeToBypassMulR_1,
    output wire  o_FreeToBypassDivR_1,

    //data part
    
    input wire [31:0] i_OprandFromBypass0_32,
    input wire [31:0] i_OprandFromBypass1_32,
    input wire [31:0] i_OprandFromBypass2_32,
    input wire [31:0] i_OprandFromBypass3_32,
    input wire [31:0] i_OprandFromBypass4_32,
    input wire [31:0] i_OprandFromBypass5_32,
    input wire [31:0] i_OprandFromBypass6_32,
    input wire [31:0] i_OprandFromBypass7_32,
    input wire [31:0] i_OprandFromBypass8_32,
    input wire [31:0] i_OprandFromBypass9_32,
    input wire [31:0] i_OprandFromBypass10_32,
    input wire [31:0] i_OprandFromBypass11_32,
    input wire [31:0] i_OprandFromBypass12_32,
    input wire [31:0] i_OprandFromBypass13_32,
    input wire [31:0] i_OprandFromBypass14_32,
    input wire [31:0] i_OprandFromBypass15_32,
    input wire [31:0] i_OprandFromBypassLSU_32,
    input wire [31:0] i_OprandFromBypassCSR_32,
    input wire [31:0] i_OprandFromBypassMul_32,
    input wire [31:0] i_OprandFromBypassDiv_32,

    input wire [3:0]  i_IndexFromLSU;
    input wire [3:0]  i_IndexFromCSR;
    input wire [3:0]  i_IndexFromMul;
    input wire [3:0]  i_IndexFromDiv;

    //Branch
    //signal
    input wire        i_DriveFromGRF;
    input wire       i_FreeFromIF;
    //data
    input wire [31:0] i_OprandFromGrfL_32;
    input wire [31:0] i_OprandFromGrfR_32;


    // output data
    





    //output signal

    
)
//cFifo1 part
   wire  [3:0]       w_count_4;
   
   wire              w_DriveCFifo2ToMutexMerge0_1;
   //wire              w_StopEventSource_1;
   wire              w_FreecFifo0ToMutexMerge0_1;
   //wire              w_DriveContapFromMutexMerge_1;
  // wire              w_DriveCondForkFromMutexMerge_1;
   //wire              w_DriveContapToEventSource _1;


  wire              w_DriveMutexMerge0TocPmtFifo2_1;
  wire              w_FreecPmtFifo2ToMutexMerge0_1;
  wire              w_PmtcPmtFifo2_1;
  wire              w_DrivecPmtFifo2TocFifo0_1;
  wire              w_FreecFifo0TocPmtFifo2_1;


   //wire              w_DriveMutexMerge0TocFifo0;
   wire  [15:0]      w_BranchList_16;

   wire  [141:0]     w_AllOpcode_142;
   wire  [3:0]       w_BranchIndex_4;
   wire  [1146:0]    w_AllInstruction_1147;
   wire  [1146:0]    w_InstructionOutput_1147
   


    assign  w_AllOpcode_142={ i_instFromDependenceCheck0_73[6:0], i_instFromDependenceCheck1_73[6:0],i_instFromDependenceCheck2_73[6:0],i_instFromDependenceCheck3_73[6:0],
                              i_instFromDependenceCheck4_73[6:0],i_instFromDependenceCheck5_73[6:0],i_instFromDependenceCheck6_73[6:0],i_instFromDependenceCheck7_73[6:0],
                              i_instFromDependenceCheck8_73[6:0], i_instFromDependenceCheck9_73[6:0],i_instFromDependenceCheck10_73[6:0],i_instFromDependenceCheck11_73[6:0],
                              i_instFromDependenceCheck12_73[6:0],i_instFromDependenceCheck13_73[6:0],i_instFromDependenceCheck14_73[6:0],i_instFromDependenceCheck15_73[6:0]};

   assign w_AllInstruction_1147={ i_instFromDependenceCheck0_73, i_instFromDependenceCheck1_73,i_instFromDependenceCheck2_73,i_instFromDependenceCheck3_73,
                              i_instFromDependenceCheck4_73,i_instFromDependenceCheck5_73,i_instFromDependenceCheck6_73,i_instFromDependenceCheck7_73,
                              i_instFromDependenceCheck8_73, i_instFromDependenceCheck9_73,i_instFromDependenceCheck10_73,i_instFromDependenceCheck11_73,
                              i_instFromDependenceCheck12_73,i_instFromDependenceCheck13_73,i_instFromDependenceCheck14_73,i_instFromDependenceCheck15_73};
   
   assign  w_AllDepL={ i_instFromDependenceCheck0_73[6:0], i_instFromDependenceCheck1_73[6:0],i_instFromDependenceCheck2_73[6:0],i_instFromDependenceCheck3_73[6:0],
                              i_instFromDependenceCheck4_73[6:0],i_instFromDependenceCheck5_73[6:0],i_instFromDependenceCheck6_73[6:0],i_instFromDependenceCheck7_73[6:0],
                              i_instFromDependenceCheck8_73[6:0], i_instFromDependenceCheck9_73[6:0],i_instFromDependenceCheck10_73[6:0],i_instFromDependenceCheck11_73[6:0],
                              i_instFromDependenceCheck12_73[6:0],i_instFromDependenceCheck13_73[6:0],i_instFromDependenceCheck14_73[6:0],i_instFromDependenceCheck15_73[6:0]};




   assign w_AllDepR={ i_instFromDependenceCheck0_73[6:0], i_instFromDependenceCheck1_73[6:0],i_instFromDependenceCheck2_73[6:0],i_instFromDependenceCheck3_73[6:0],
                              i_instFromDependenceCheck4_73[6:0],i_instFromDependenceCheck5_73[6:0],i_instFromDependenceCheck6_73[6:0],i_instFromDependenceCheck7_73[6:0],
                              i_instFromDependenceCheck8_73[6:0], i_instFromDependenceCheck9_73[6:0],i_instFromDependenceCheck10_73[6:0],i_instFromDependenceCheck11_73[6:0],
                              i_instFromDependenceCheck12_73[6:0],i_instFromDependenceCheck13_73[6:0],i_instFromDependenceCheck14_73[6:0],i_instFromDependenceCheck15_73[6:0]};
    generate
        genvar i;
        for(i=0;i<16;i++) begin 
          assign w_BranchList_16[i]=((w_AllOpcode_142[6+7*i,7*i]== `OP_BRANCH ) | (w_AllOpcode_142[6+7*i,7*i]== `OP_JALR) | (w_AllOpcode_142[6+7*i,7*i]== `OP_JAL));
        end
    endgenerate
   


   FindBranch FindBranch1(
        .din(w_BranchList_16),
        .index(w_BranchIndex_4),
   );



//问学长
  
 
     
cMutexMerge2_32b  MutexMerge0(
       .i_drive0(i_DriveFromDependenceCheck),
       .i_drive1(w_DriveCFifo2ToMutexMerge0_1),
       .i_data0_32(),
       .i_data1_32(),
       .i_freeNext(w_FreecPmtFifo2ToMutexMerge0_1),
       .rst(rstn),
       .o_free0(o_FreeToDepdenceCheck),
       .o_free1(w_FreeTo)
       .o_driveNext(w_DriveMutexMerge0TocPmtFifo2_1),
       .o_data_32(),
);

 
assign w_PmtcPmtFifo2_1=(i_BranchCount_4 <= r_count_4) && (~IsBranch);

wire   w_fireCpmtFifo2_1;
reg [3:0] r_FirstBranchIndex_4;

cPmtFifo1 CPmtFifo2(
        .i_drive(w_DriveMutexMerge0TocPmtFifo2_1),
        .i_freeNext(w_FreecFifo0TocPmtFifo2_1), 
        .rst(rstn),
        .pmt(w_PmtcPmtFifo2_1),
        .o_free(w_FreecPmtFifo2ToMutexMerge0_1),
        .o_driveNext(w_DrivecPmtFifo2TocFifo0_1),
        .o_fire_1(w_fireCpmtFifo2_1)
);

always@(posedge w_fireCpmtFifo2_1 or negedge rstn)
{
    if(!rstn)begin
        r_FirstBranchIndex_4<=4'b0;;
        o_FirstBranchIndex_4=r_FirstBranchIndex_4;
    end
   
    else begin
        r_FirstBranchIndex_4<=w_BranchIndex_4;
        o_FirstBranchIndex_4=r_FirstBranchIndex_4;
    end
    
}

   wire    w_FreeCFifo1LToCondFork_1;
   wire    w_FreeCFifo1RToCondFork_1;
   wire    w_DriveCondForkToCFifo1L_1;
   wire    w_DriveCondForkToCFifo1R_1;

   wire    w_valid0_1;
   wire    w_valid1_1;
   wire    w_cFifo1LFire_1;
   wire    [1:0] w_cFifo1RFire_2;

  wire  [3:0]   w_BranchDepL_4;
  wire  [3:0]   w_BranchDepR_4;



    reg [3:0] r_count_4;
    reg [15:0] r_BranchList_16;
    reg [3:0] r_BranchIndex_4;
    reg [15:0] r_BranchListNext_16;
    wire [3:0] w_BranchIndexSelfLoop_4;
    wire [16:0] w_BranchListSelfLoop_16;
    wire       w_DrivecFifo0ToCondFork0_1;
    wire       w_cFifo0Fire_1;
    wire       w_FreecCondFork0TocFifo0_1;

    wire       w_FreecFifo0ToMutexMerge0_1;
 

cFifo1 cFIFO0(
    .i_drive(w_DrivecPmtFifo2TocFifo0_1),
    .i_freeNext(w_FreecCondFork0TocFifo0_1),
    .rst(rstn),
    .o_free(w_FreecFifo0TocPmtFifo2_1),
    .o_driveNext(w_DrivecFifo0ToCondFork0_1),
    .o_fire_1(w_cFifo0Fire_1)
);

 always @(posedge w_cFifo0Fire_1 or negedge rstn) begin 
    if(!rstn) begin
        r_count_4 <= 4'b0;
        r_BranchList_16 <= 16'b0;
        r_BranchIndex_4 <= 4'b0;
        r_BranchListNext_16 <= 16'b0;
        w_BranchDepL_4= w_AllDepL_64[3+r_BranchIndex_4*4,0+r_BranchIndex_4*4];
        w_BranchDepR_4=w_AllDepR_64[3+r_BranchIndex_4*4,0+r_BranchIndex_4*4];
    end
   else if (r_count_4==0) begin
         r_count_4 <= r_count_4 + 4'b0001;
         r_BranchIndex_4 <= w_BranchIndex_4;
         r_BranchList_16 <=  w_BranchList_16;
         w_BranchDepL_4= w_AllDepL_64[3+r_BranchIndex_4*4,0+r_BranchIndex_4*4];
         w_BranchDepR_4=w_AllDepR_64[3+r_BranchIndex_4*4,0+r_BranchIndex_4*4];
        for(integer i=0;i<16;i++) begin 
            if(i==w_BranchIndex_4) begin
            r_BranchListNext_16[i] =  4'b0001;
            end
            else begin
            r_BranchListNext_16[i] = r_BranchList_16[i];
            end
        end
   end
     
   else if((r_count_4>0) && (r_count_4 <i_BranchCount_4)) begin
        r_count_4 <= r_count_4 + 4'b0001;
        r_BranchList_16 <= r_BranchListNext_16;
        w_BranchListSelfLoop_16 =  r_BranchList_16;
        FindBranch  FindBranch2(
         .din(w_BranchListSelfLoop_16),
         .index(w_BranchIndexSelfLoop_4),
    );

        w_BranchDepL_4= w_AllDepL_64[3+r_BranchIndex_4*4,0+r_BranchIndex_4*4];
        w_BranchDepR_4=w_AllDepR_64[3+r_BranchIndex_4*4,0+r_BranchIndex_4*4];
         
         for(integer i=0;i<16;i++) begin 
            if(i==w_BranchIndexSelfLoop_4) begin
            r_BranchListNext_16[i] =  4'b0001;
            end
            else begin
            r_BranchListNext_16[i] = r_BranchList_16[i];
            end
        end
   end

   else begin
         r_count_4 <= 4'b0;
        r_BranchList_16 <= 16'b0;
        r_BranchIndex_4 <= 4'b0;
        r_BranchListNext_16 <= 16'b0;
        w_BranchDepL_4= w_AllDepL_64[3+r_BranchIndex_4*4,0+r_BranchIndex_4*4];
        w_BranchDepR_4=w_AllDepR_64[3+r_BranchIndex_4*4,0+r_BranchIndex_4*4];
   end
        end



assign w_valid0_1= ~(w_BranchList_16[0]);
assign w_valid1_1=(~(w_BranchDepL_4==4'b1111 && w_BranchDepR_4==4'b1111)) && (w_BranchList_16[r_BranchIndex_4]);



     cCondFork2_32b cCondFork0(
        .i_drive(w_DrivecFifo0ToCondFork0_1),
        .i_freeNext0(w_FreeCFifo1LToCondFork_1),
        .i_freeNext1(w_FreeCFifo1RToCondFork_1),
        .valid0(w_valid0_1),
        .valid1(w_valid1_1),
        .rst(rst),
        .i_data_32(),
        .o_free(w_FreecCondFork0TocFifo0_1),
        .o_driveNext0(w_DriveCondForkToCFifo1L_1),
        .o_driveNext1(w_DriveCondForkToCFifo1R_1),
        .o_data0_32(),
        .o_data1_32() );

    cFifo1 CFifo1L(
        .i_drive(w_DriveCondForkToCFifo1L_1),
        .i_freeNext(i_freeFromIssue),
        .rst(rstn),
        .o_free(w_FreeCFifo1LToCondFork_1),
        .o_driveNext(o_driveToIssue),
        .o_fire_1(w_cFifo1LFire_1),
    );
 



reg [1167:0] r_Instruction_1147;

  always @(posedge w_cFifo1LFire_1 or negedge rstn) begin
        if(!rstn) begin
            r_Instruction_1147 <=  1147'h0;
            r_BranchInstuction <= 73'b0;
        end
        else begin
            for(integer i=0;i<16;i++) begin
            {
                if(i<w_BranchIndex_4) begin
                r_Instruction_1147[72+73*i,0+73*i] <= w_AllInstruction_1443[72+73*i,0+73*i];
                w_InstructionOutput_1147[72+73*i,0+73*i]=r_Instruction_1147[72+73*i,0+73*i];
                end
                else begin
                r_Instruction_1147[72+73*i,0+73*i] <= `nop;     
                w_InstructionOutput_1147[72+73*i,0+73*i]=r_Instruction_1147[72+73*i,0+73*i];
                end
            }
            end
           

               {o_instToIssue0_73, o_instToIssue1_73, o_instToIssue2_73, o_instToIssue3_73, o_instToIssue4_73, o_instToIssue5_73, o_instToIssue6_73, 
              o_instToIssue7_73, o_instToIssue8_73, o_instToIssue9_73, o_instToIssue10_73, o_instToIssue11_73, o_instToIssue12_73, o_instToIssue13_73, 
              o_instToIssue14_73, o_instToIssue15_73}  =  w_InstructionOutput_1147;
        end
            end
      
    



 cFifo1 CFifo1R(
        .i_drive(w_driveNext0),
        .i_freeNext(i_freeFromIssue),
        .rst(rstn),
        .o_free(w_freeNext0),
        .o_driveNext(o_driveToIssue),
        .o_fire_2(w_cFifo1RFire_1),
    );


    wire [72:0]  w_BranchInstruction_73;   
    reg  [72:0]  r_BranchInstuction_73;
    wire [31:0]  w_BranchInstructionPC_32;

 always @(posedge w_cFifo1RFire_1 or negedge rstn) begin
     if(!rstn) begin
      r_BranchInstuction_73 <=`nop;

      w_dep1_4 = r_BranchInstuction_73[36:33];
      w_dep2_4 = r_BranchInstuction_73[40:37];
      w_BranchInstruction_73 =r_BranchInstuction_73;
      w_BranchInstructionPC_32 = r_BranchInstuction_73[72:41]
    end
    else begin
      r_BranchInstuction_73 <= w_AllInstruction_1147[72+r_BranchIndex_4*73,0+r_BranchIndex_4*73];
      w_dep1_4 = r_BranchInstuction_73[36:33];
      w_dep2_4 = r_BranchInstuction_73[40:37];
      w_BranchInstructionPC_32 = r_BranchInstuction_73[72:41]
      w_BranchInstruction_73 =r_BranchInstuction_73;
    end
 end



//cfifo2 part
   wire         w_FreeFromMutexMerge0L_1;
   wire         w_FreeFromMutexMerge0R_1;
   wire         w_DriveToMutexMerge0L_1;
   wire         w_DriveToMutexMerge1R_1;
   wire         w_DriveToMutexMerge1R_1;
   wire         w_FreeFromMutexMerge1L_1;
   wire         w_FreeFromMutexMerge1R_1;
   wire   w_FreeToMutexMerge1A_1;
   wire   w_FreeToMutexMerge1B_1;
  wire   w_DriveTocPmtFifoFromBypass_1;
  wire   w_DriveToMutexMerge2_1;
   wire   w_FreeFromMutexMerge2_1;

   wire [19:0]  w_DriveFromBypassL_20;
   wire [19:0]  w_FreeToBypassL_20;
   wire [19:0]  w_DriveToMutexMerge0L_20
   wire [19:0]  w_BypassSelectL_20
   
   wire [19:0]  w_DriveFromBypassR_20;
   wire [19:0]  w_FreeToBypassR_20;
   wire [19:0]  w_DriveToMutexMerge0R_20
   wire [19:0]  w_BypassSelectR_20

   wire w_dep1_4;
   wire w_dep2_4;

   wire w_DriveWithDep_1;
   wire w_IsDriveWithDep_1;

    wire [3:0]  w_countD_4;
    wire [31:0] w_BranchPC_32;
    wire        w_IsBranch_1;


    wire [3:0]  w_countQ_4;
    wire [31:0] o_BranchPC_32;
    wire        o_IsBranch_1;
 
    reg [3:0]   r_count_4;
    reg [31:0]  r_BranchPC_32;
    reg         r_IsBranch_1;

   assign w_DriveFromBypassL_20={i_DriveFromBypass0L_1,i_DriveFromBypass1L_1, i_DriveFromBypass2L_1,i_DriveFromBypass3L_1,i_DriveFromBypass4L_1,
                                 i_DriveFromBypass5L_1,i_DriveFromBypass6L_1,i_DriveFromBypass7L_1,i_DriveFromBypass8L_1,i_DriveFromBypass9L_1,
                                 i_DriveFromBypass10L_1,i_DriveFromBypass11L_1, i_DriveFromBypass12L_1,i_DriveFromBypass13L_1,i_DriveFromBypass14L_1,
                                 i_DriveFromBypass15L_1,i_DriveFromBypassLsuL_1,i_DriveFromBypassCsrL_1,i_DriveFromBypassMulL_1,i_DriveFromBypassDivL_1};

   assign{ o_FreeToBypass0L_1,o_FreeToBypass1L_1,o_FreeToBypass2L_1,o_FreeToBypass3L_1,o_FreeToBypass4L_1,
                               o_FreeToBypass5L_1,o_FreeToBypass6L_1,o_FreeToBypass7L_1,o_FreeToBypass8L_1,o_FreeToBypass9L_1,o_FreeToBypass10L_1,
                               o_FreeToBypass11L_1,o_FreeToBypass12L_1,o_FreeToBypass13L_1,o_FreeToBypass14L_1,o_FreeToBypass15L_1,o_FreeToBypassLsuL_1,
                               o_FreeToBypassCsrL_1,o_FreeToBypassMulL_1,o_FreeToBypassDivL_1,} = w_FreeToBypassL_20;

   assign w_DriveFromBypassR_20={i_DriveFromBypass0R_1,i_DriveFromBypass1R_1, i_DriveFromBypass2R_1,i_DriveFromBypass3R_1,i_DriveFromBypass4R_1,
                                 i_DriveFromBypass5R_1,i_DriveFromBypass6R_1,i_DriveFromBypass7R_1,i_DriveFromBypass8R_1,i_DriveFromBypass9R_1,
                                 i_DriveFromBypass10R_1,i_DriveFromBypass11R_1, i_DriveFromBypass12R_1,i_DriveFromBypass13R_1,i_DriveFromBypass14R_1,
                                 i_DriveFromBypass15R_1,i_DriveFromBypassLsuR_1,i_DriveFromBypassCsrR_1,i_DriveFromBypassMulR_1,i_DriveFromBypassDivR_1};

    assign { o_FreeToBypass0R_1,o_FreeToBypass1R_1,o_FreeToBypass2R_1,o_FreeToBypass3R_1,o_FreeToBypass4R_1,
                               o_FreeToBypass5R_1,o_FreeToBypass6R_1,o_FreeToBypass7R_1,o_FreeToBypass8R_1,o_FreeToBypass9R_1,o_FreeToBypass10R_1,
                               o_FreeToBypass11R_1,o_FreeToBypass12R_1,o_FreeToBypass13R_1,o_FreeToBypass14R_1,o_FreeToBypass15R_1,o_FreeToBypassLsuR_1,
                               o_FreeToBypassCsrR_1,o_FreeToBypassMulR_1,o_FreeToBypassDivR_1,} =w_FreeToBypassR_20;

   



//Wake-Up Circuit
  
generate
    genvar j;
    for(j=0;i<16;i=i+1) begin:SelectData1
    assign
          assign w_BypassSelectL_20[i]=  (w_dep1_4 ==i) ? 1'b1 : 1'b0;
    end
endgenerate
    assign w_BypassSelectL_20[16]=  (w_dep1_4 ==i_IndexFromLSU) ? 1'b1 : 1'b0;
    assign w_BypassSelectL_20[17]=  (w_dep1_4 ==i_IndexFromCSR) ? 1'b1 : 1'b0;
    assign w_BypassSelectL_20[20]=  (w_dep1_4 ==i_IndexFromMul) ? 1'b1 : 1'b0;
    assign w_BypassSelectL_20[19]=  (w_dep1_4 ==i_IndexFromDiv) ? 1'b1 : 1'b0;

generate
    genvar j;
    for(j=0;i<16;i=i+1) begin:SelectData2
    assign
          assign w_BypassSelectR_20[i]=  (w_dep2_4 ==i) ? 1'b1 : 1'b0;
    end
endgenerate
    assign w_BypassSelectR_20[16]=  (w_dep2_4 ==i_IndexFromLSU) ? 1'b1 : 1'b0;
    assign w_BypassSelectR_20[17]=  (w_dep2_4 ==i_IndexFromCSR) ? 1'b1 : 1'b0;
    assign w_BypassSelectR_20[20]=  (w_dep2_4 ==i_IndexFromMul) ? 1'b1 : 1'b0;
    assign w_BypassSelectR_20[19]=  (w_dep2_4 ==i_IndexFromDiv) ? 1'b1 : 1'b0;


  generate
        genvar i; 
        for(i=0; i<16; i=i+1) begin:Bypass_FIFO_L
            cPmtFifo1 BypassFifo (
            .i_drive(w_DriveFromBypassL_20[i]),
            .i_freeNext(w_FreeFromMutexMerge0L_1), 
            .rst(rstn),
            .pmt(w_BypassSelectL_20[i]),
            .o_free(w_FreeToBypassL_20[i]),
            .o_driveNext(w_DriveToMutexMerge0L_20[i]),
            .o_fire_1
        );
        end
    endgenerate

   generate
        genvar i; 
        for(i=0; i<16; i=i+1) begin:Bypass_FIFO_R
            cPmtFifo1 BypassFifo (
            .i_drive(w_DriveFromBypassR_20[i]),
            .i_freeNext(w), 
            .rst(rstn),
            .pmt(w_BypassSelectR_20[i]),
            .o_free(w_FreeToBypassR_20[i]),
            .o_driveNext(w_DriveToMutexMerge0R_20[i]),
            .o_fire_1
        );
        end
    endgenerate
      
     cPmtFifo1 BypassFifo_LSU_L (
            .i_drive(w_DriveFromBypassL_20[16]),
            .i_freeNext(w_FreeFromMutexMerge0L_1), 
            .rst(rstn),
            .pmt(w_BypassSelectL_20[16]),
            .o_free(w_FreeToBypassL_20[16]),
            .o_driveNext(w_DriveToMutexMerge0L_20[16]),
            .o_fire_1
        );
    
     cPmtFifo1 BypassFifo_CSR_L (
            .i_drive(w_DriveFromBypassL_20[17]),
            .i_freeNext(w_FreeFromMutexMerge0L_1), 
            .rst(rstn),
            .pmt(w_BypassSelectL_20[17]),
            .o_free(w_FreeToBypassL_20[17]),
            .o_driveNext(w_DriveToMutexMerge0L_20[17]),
            .o_fire_1
        );
    
     cPmtFifo1 BypassFifo_Div_L (
            .i_drive(w_DriveFromBypassL_20[20]),
            .i_freeNext(w_FreeFromMutexMerge0L_1), 
            .rst(rstn),
            .pmt(w_BypassSelectL_20[20]),
            .o_free(w_FreeToBypassL_20[20]),
            .o_driveNext(w_DriveToMutexMerge0L_20[20]),
            .o_fire_1
        );
    
     cPmtFifo1 BypassFifo_Mul_L (
            .i_drive(w_DriveFromBypassL_20[19]),
            .i_freeNext(w_FreeFromMutexMerge0L_1), 
            .rst(rstn),
            .pmt(w_BypassSelectL_20[19]),
            .o_free(w_FreeToBypassL_20[19]),
            .o_driveNext(w_DriveToMutexMerge0L_20[19]),
            .o_fire_1
        );

     cPmtFifo1 BypassFifo_LSU_R (
            .i_drive(w_DriveFromBypassR_20[16]),
            .i_freeNext(w_FreeFromMutexMerge0R_1), 
            .rst(rstn),
            .pmt(w_BypassSelectR_20[16]),
            .o_free(w_FreeToBypassR_20[16]),
            .o_driveNext(w_DriveToMutexMerge0R_20[16]),
            .o_fire_1
        );

      cPmtFifo1 BypassFifo_CSR_R (
            .i_drive(w_DriveFromBypassR_20[17]),
            .i_freeNext(w), 
            .rst(rstn),
            .pmt(w_BypassSelectR_20[17]),
            .o_free(w_FreeToBypassR_20[17]),
            .o_driveNext(w_DriveToMutexMerge0R_20[17]),
            .o_fire_1
        );
       
       cPmtFifo1 BypassFifo_Div_R (
            .i_drive(w_DriveFromBypassR_20[20]),
            .i_freeNext(w), 
            .rst(rstn),
            .pmt(w_BypassSelectR_20[20]),
            .o_free(w_FreeToBypassR_20[20]),
            .o_driveNext(w_DriveToMutexMerge0R_20[20]),
            .o_fire_1
        );
       
       cPmtFifo1 BypassFifo_Mul_R (
            .i_drive(w_DriveFromBypassR_20[19]),
            .i_freeNext(w), 
            .rst(rstn),
            .pmt(w_BypassSelectR_20[19]),
            .o_free(w_FreeToBypassR_20[19]),
            .o_driveNext(w_DriveToMutexMerge0R_20[19]),
            .o_fire_1
        );
 
   
    cMutexMerge20_32b MutexMerge0L(
        .i_drive0(w_DriveToMutexMerge0L_20[0]),
        .i_drive1(w_DriveToMutexMerge0L_20[1]),
        .i_drive2(w_DriveToMutexMerge0L_20[2]),
        .i_drive3(w_DriveToMutexMerge0L_20[3]),
        .i_drive4(w_DriveToMutexMerge0L_20[4]),
        .i_drive5(w_DriveToMutexMerge0L_20[5]),
        .i_drive6(w_DriveToMutexMerge0L_20[6]),
        .i_drive7(w_DriveToMutexMerge0L_20[7]),
        .i_drive8(w_DriveToMutexMerge0L_20[8]),
        .i_drive9(w_DriveToMutexMerge0L_20[9]),
        .i_drive10(w_DriveToMutexMerge0L_20[10]),
        .i_drive11(w_DriveToMutexMerge0L_20[11]),
        .i_drive12(w_DriveToMutexMerge0L_20[12]),
        .i_drive13(w_DriveToMutexMerge0L_20[13]),
        .i_drive14(w_DriveToMutexMerge0L_20[14]),
        .i_drive15(w_DriveToMutexMerge0L_20[15]),
        .i_drive16(w_DriveToMutexMerge0L_20[16]),
        .i_drive17(w_DriveToMutexMerge0L_20[17]),
        .i_drive18(w_DriveToMutexMerge0L_20[20]),
        .i_drive19(w_DriveToMutexMerge0L_20[19]),
       
        .i_data0_32(),
        .i_data1_32(),
        .i_data2_32(),
        .i_data3_32(),
        .i_data4_32(),
        .i_data5_32(),
        .i_data6_32(),
        .i_data7_32(),
        .i_data8_32(),
        .i_data9_32(),
        .i_data10_32(),
        .i_data11_32(),
        .i_data12_32(),
        .i_data13_32(),
        .i_data14_32(),
        .i_data15_32(),
        .i_data16_32(),
        .i_data17_32(),
        .i_data18_32(),
        .i_data19_32(),

        .i_freeNext(w_FreeFromMutexMerge1L_1),
        .rst(rstn),

        .o_free0(w_FreeToBypassL_20[0]),
        .o_free1(w_FreeToBypassL_20[1]),
        .o_free2(w_FreeToBypassL_20[2]),
        .o_free3(w_FreeToBypassL_20[3]),
        .o_free4(w_FreeToBypassL_20[4]),
        .o_free5(w_FreeToBypassL_20[5]),
        .o_free6(w_FreeToBypassL_20[6]),
        .o_free7(w_FreeToBypassL_20[7]),
        .o_free8(w_FreeToBypassL_20[8]),
        .o_free9(w_FreeToBypassL_20[9]),
        .o_free10(w_FreeToBypassL_20[10]),
        .o_free11(w_FreeToBypassL_20[11]),
        .o_free12(w_FreeToBypassL_20[12]),
        .o_free13(w_FreeToBypassL_20[13]),
        .o_free14(w_FreeToBypassL_20[14]),
        .o_free15(w_FreeToBypassL_20[15]),
        .o_free16(w_FreeToBypassL_20[16]),
        .o_free17(w_FreeToBypassL_20[17]),
        .o_free18(w_FreeToBypassL_20[18]),
        .o_free19(w_FreeToBypassL_20[19]),



        .o_driveNext(w_DriveToMutexMerge1L_1),
        .o_data_32()
    );

cMutexMerge20_32b MutexMerge0R(
        .i_drive0(w_DriveToMutexMerge0R_20[0]),
        .i_drive1(w_DriveToMutexMerge0R_20[1]),
        .i_drive2(w_DriveToMutexMerge0R_20[2]),
        .i_drive3(w_DriveToMutexMerge0R_20[3]),
        .i_drive4(w_DriveToMutexMerge0R_20[4]),
        .i_drive5(w_DriveToMutexMerge0R_20[5]),
        .i_drive6(w_DriveToMutexMerge0R_20[6]),
        .i_drive7(w_DriveToMutexMerge0R_20[7]),
        .i_drive8(w_DriveToMutexMerge0R_20[8]),
        .i_drive9(w_DriveToMutexMerge0R_20[9]),
        .i_drive10(w_DriveToMutexMerge0R_20[10]),
        .i_drive11(w_DriveToMutexMerge0R_20[11]),
        .i_drive12(w_DriveToMutexMerge0R_20[12]),
        .i_drive13(w_DriveToMutexMerge0R_20[13]),
        .i_drive14(w_DriveToMutexMerge0R_20[14]),
        .i_drive15(w_DriveToMutexMerge0R_20[15]),
        .i_drive16(w_DriveToMutexMerge0R_20[16]),
        .i_drive17(w_DriveToMutexMerge0R_20[17]),
        .i_drive18(w_DriveToMutexMerge0R_20[20]),
        .i_drive19(w_DriveToMutexMerge0R_20[19]),
       
        i_data0_32(),
        .i_data1_32(),
        .i_data2_32(),
        .i_data3_32(),
        .i_data4_32(),
        .i_data5_32(),
        .i_data6_32(),
        .i_data7_32(),
        .i_data8_32(),
        .i_data9_32(),
        .i_data10_32(),
        .i_data11_32(),
        .i_data12_32(),
        .i_data13_32(),
        .i_data14_32(),
        .i_data15_32(),
        .i_data16_32(),
        .i_data17_32(),
        .i_data18_32(),
        .i_data19_32(),


        .i_freeNext(w_FreeFromMutexMerge1R_1),
        .rst(rstn),

        .o_free0(w_FreeToBypassR_20[0]),
        .o_free1(w_FreeToBypassR_20[1]),
        .o_free2(w_FreeToBypassR_20[2]),
        .o_free3(w_FreeToBypassR_20[3]),
        .o_free4(w_FreeToBypassR_20[4]),
        .o_free5(w_FreeToBypassR_20[5]),
        .o_free6(w_FreeToBypassR_20[6]),
        .o_free7(w_FreeToBypassR_20[7]),
        .o_free8(w_FreeToBypassR_20[8]),
        .o_free9(w_FreeToBypassR_20[9]),
        .o_free10(w_FreeToBypassR_20[10]),
        .o_free11(w_FreeToBypassR_20[11]),
        .o_free12(w_FreeToBypassR_20[12]),
        .o_free13(w_FreeToBypassR_20[13]),
        .o_free14(w_FreeToBypassR_20[14]),
        .o_free15(w_FreeToBypassR_20[15]),
        .o_free16(w_FreeToBypassR_20[16]),
        .o_free17(w_FreeToBypassR_20[17]),
        .o_free18(w_FreeToBypassR_20[18]),
        .o_free19(w_FreeToBypassR_20[19]),


        .o_driveNext(w_DriveToMutexMerge1R_1),
        .o_data_32()
    );

    cMutexMerge2_32b MutexMerge1(
        .i_drive0(w_DriveToMutexMerge1L_1),
        .i_drive1(w_DriveToMutexMerge1R_1),
        .i_data0_32(),
        .i_data1_32(),
        .i_freeNext(w_FreeToMutexMerge1A_1),
        .rst(rstn),
        .o_free0(w_FreeFromMutexMerge1L_1),
        .o_free1(w_FreeFromMutexMerge1R_1),
        .o_driveNext(w_DriveTocPmtFifoFromBypass_1),
        .o_data_32()
    );

assign w_IsDriveWithDep_1=(w_dep1_4==4'b0|w_dep2_4==4'b0) ? 1'b1: 1'b0 ;
assign w_IsDriveWithGRF_1=~(w_IsDriveWithDep_1);
wire   w_FreeMutexMerge2ToBypassPmt_1;
wire   w_FreeMutexMerge2ToGRFPmt_1;
wire   w_DriveGRFPmtToMutexMerge2_1;
wire   w_DriveBypassPmtToMutexMerge2_1;
output wire o_FreeToGRF_1;


     cPmtFifo1 cPmtFifo_FromBypass(
        .i_drive(w_DriveTocPmtFifoFromBypass_1),
        .i_freeNext(w_FreeMutexMerge2ToBypassPmt_1), 
        .rst(rstn),
        .pmt(w_IsDriveWithDep_1),
        .o_free(w_FreeToMutexMerge1),
        .o_driveNext(w_DriveBypassPmtToMutexMerge2_1),
        .o_fire_1()
);

     
 cPmtFifo1 cPmtFifo_FromGRF(
        .i_drive(i_DriveFromGRF_1),
        .i_freeNext(w_FreeMutexMerge2ToGRFPmt), 
        .rst(rstn),
        .pmt(w_IsDriveWithGRF_1),
        .o_free(o_FreeToGRF_1),
        .o_driveNext(w_DriveGRFPmtToMutexMerge2_1),
        .o_fire_1()
);

 cMutexMerge2_32b MutexMerge2(
        .i_drive0(w_DriveBypassPmtToMutexMerge2_1),
        .i_drive1(w_DriveGRFPmtToMutexMerge2_1),
        .i_data0_32(),
        .i_data1_32(),
        .i_freeNext( w_FreeBranchFifoToMutexMerge2_1),
        .rst(rstn),
        .o_free0(w_FreeMutexMerge2ToBypassPmt_1),
        .o_free1(w_FreeMutexMerge2ToGRFPmt),
        .o_driveNext(w_DriveMutexMerge2ToBranchFifo_1),
        .o_data_32()
    );
//Branch
wire w_DriveMutexMerge2ToBranchFifo_1;
wire w_FreeBranchFifoToMutexMerge2_1;
wire w_DriveBranchFifoToCopyFork0_1;
wire w_FreeCopyFork0ToBranchFifo_1;
wire w_BranchFifoFire_1;

cFifo1 BranchFifo(
        .i_drive(w_DriveMutexMerge2ToBranchFifo_1), 
        .i_freeNext(w_FreeCopyFork0ToBranchFifo_1),
        .rst(rstn),
        .o_free(w_FreeBranchFifoToMutexMerge2_1), 
        .o_driveNext(w_DriveBranchFifoToCopyFork0_1),
        .o_fire_1(w_BranchFifoFire_1),
);

    wire [31:0] w_bypass_oprandL_32;
    wire [31:0] w_bypass_oprandR_32;
    wire [31:0] w_final_oprandL_32;
    wire [31:0] w_final_oprandR_32;
    

 case(w_BypassSelectL_20)
    20'b00000000000000000001:begin assign w_bypass_oprandL_32=i_OprandFromBypass0_32 ;end
    20'b00000000000000000010:begin assign w_bypass_oprandL_32=i_OprandFromBypass1_32 ;end
    20'b00000000000000000100:begin assign w_bypass_oprandL_32=i_OprandFromBypass2_32 ;end
    20'b00000000000000001000:begin assign w_bypass_oprandL_32=i_OprandFromBypass3_32 ;end
    20'b00000000000000010000:begin assign w_bypass_oprandL_32=i_OprandFromBypass4_32 ;end
    20'b00000000000000100000:begin assign w_bypass_oprandL_32=i_OprandFromBypass5_32 ;end
    20'b00000000000001000000:begin assign w_bypass_oprandL_32=i_OprandFromBypass6_32 ;end
    20'b00000000000010000000:begin assign w_bypass_oprandL_32=i_OprandFromBypass7_32 ;end
    20'b00000000000100000000:begin assign w_bypass_oprandL_32=i_OprandFromBypass8_32 ;end
    20'b00000000001000000000:begin assign w_bypass_oprandL_32=i_OprandFromBypass9_32 ;end
    20'b00000000010000000000:begin assign w_bypass_oprandL_32=i_OprandFromBypass10_32; end
    20'b00000000100000000000:begin assign w_bypass_oprandL_32=i_OprandFromBypass11_32; end
    20'b00000001000000000000:begin assign w_bypass_oprandL_32=i_OprandFromBypass12_32; end
    20'b00000010000000000000:begin assign w_bypass_oprandL_32=i_OprandFromBypass13_32; end
    20'b00000100000000000000:begin assign w_bypass_oprandL_32=i_OprandFromBypass14_32; end
    20'b00001000000000000000:begin assign w_bypass_oprandL_32=i_OprandFromBypass15_32; end
    20'b00010000000000000000:begin assign w_bypass_oprandL_32=i_OprandFromBypassLSU_32; end
    20'b00100000000000000000:begin assign w_bypass_oprandL_32=i_OprandFromBypassCSR_32;end
    20'b01000000000000000000:begin assign w_bypass_oprandL_32=i_OprandFromBypassMul_32; end
    20'b10000000000000000000:begin assign w_bypass_oprandL_32=i_OprandFromBypassDiv_32; end
    
    default:assign w_bypass_oprandL_32=32'b0;
endcase

case(w_BypassSelectR_20)
     20'b00000000000000000001:begin assign w_bypass_oprandR_32=i_OprandFromBypass0_32 ;end
    20'b00000000000000000010:begin assign w_bypass_oprandR_32=i_OprandFromBypass1_32 ;end
    20'b00000000000000000100:begin assign w_bypass_oprandR_32=i_OprandFromBypass2_32 ;end
    20'b00000000000000001000:begin assign w_bypass_oprandR_32=i_OprandFromBypass3_32 ;end
    20'b00000000000000010000:begin assign w_bypass_oprandR_32=i_OprandFromBypass4_32 ;end
    20'b00000000000000100000:begin assign w_bypass_oprandR_32=i_OprandFromBypass5_32 ;end
    20'b00000000000001000000:begin assign w_bypass_oprandR_32=i_OprandFromBypass6_32 ;end
    20'b00000000000010000000:begin assign w_bypass_oprandR_32=i_OprandFromBypass7_32 ;end
    20'b00000000000100000000:begin assign w_bypass_oprandR_32=i_OprandFromBypass8_32 ;end
    20'b00000000001000000000:begin assign w_bypass_oprandR_32=i_OprandFromBypass9_32 ;end
    20'b00000000010000000000:begin assign w_bypass_oprandR_32=i_OprandFromBypass10_32; end
    20'b00000000100000000000:begin assign w_bypass_oprandR_32=i_OprandFromBypass11_32; end
    20'b00000001000000000000:begin assign w_bypass_oprandR_32=i_OprandFromBypass12_32; end
    20'b00000010000000000000:begin assign w_bypass_oprandR_32=i_OprandFromBypass13_32; end
    20'b00000100000000000000:begin assign w_bypass_oprandR_32=i_OprandFromBypass14_32; end
    20'b00001000000000000000:begin assign w_bypass_oprandR_32=i_OprandFromBypass15_32; end
    20'b00010000000000000000:begin assign w_bypass_oprandR_32=i_OprandFromBypassLSU_32; end
    20'b00100000000000000000:begin assign w_bypass_oprandR_32=i_OprandFromBypassCSR_32;end
    20'b01000000000000000000:begin assign w_bypass_oprandR_32=i_OprandFromBypassMul_32; end
    20'b10000000000000000000:begin assign w_bypass_oprandR_32=i_OprandFromBypassDiv_32; end
    
    default:assign w_bypass_oprandR_32=32'b0;
endcase



   wire [31:0]  w_final_oprandL_32;
   wire  [31:0]  w_final_oprandR_32;


   if(w_dep1_4==4'b1111) begin
    assign w_final_oprandL_32=i_OprandFromGrfL_32;
    else
      assign  w_final_oprandL_32=w_bypass_oprandL_32;
    end

    if(w_dep2_4==4'b1111) begin
    assign w_final_oprandR_32=i_OprandFromGrfR_32;
    else
      assign  w_final_oprandR_32=w_bypass_oprandR_32;
    end


BranchModule  BranchModule (  
      .i_inst_32(w_BranchInstruction_73),    
      .i_addr_32(w_BranchInstructionPC_32),    
	  .i_OprandL_32(w_final_oprandL_32),
      .i_OprandR_32(w_final_oprandR_32),
      .o_branchPC_32(w_BranchPC_32),    
      .o_isBranch_1 (w_IsBranch_1)     
);
      
     
     reg [3:0] r_CountBranch_4;
       always @(posedge w_fireCfifo2_1 or negedge rstn)  begin
        if(!rstn) begin
           r_CountBranch_4 <= 4'b0;
        end
        else begin
        r_CountBranch_4<=r_CountBranch_4 + 4'b0001 ;
        r_BranchPC_3  <= w_BranchPC_32;
        r_IsBranch_1 <= w_IsBranch_1;
        end
       end

  
   wire w_DriveCopyForkToIssueFifo_1;
   wire w_DriveCopyForkToIFFifo_1;
   wire w_FreeIssueFifoToCopyFork_1;
   wire w_FreeIFFifoCopyToFork_1;

    cCopyFork2_32b CopyFork0(
              i_drive(w_DriveBranchFifoToCopyFork0_1),
              i_freeNext0(w_FreeCopyForkToIssueFifo_1),
              i_freeNext1(w_FreeCopyForkToIFFifo_1),
              rst(rstn),
              i_data_32(),
              o_free(w_FreeCopyFork0ToBranchFifo_1),
              o_driveNext0(w_DriveCopyForkToIssueFifo_1),
              o_driveNext1(w_DriveCopyForkToIFFifo_1),
              o_data0(),
              o_data1()
              );


wire   w_PmtIFFifo_1;
reg   [31:0] r_OutputBranchPC_32;
wire   w_cPmtFifo1Fire_1;
output wire [31:0] o_BranchPC_32;

assign w_PmtIFFifo_1=(i_BranchCount_4 >= w_count_4) && (w_IsBranch_1==1);

cPmtFifo1 cPmtFifo_ToIF(
        .i_drive(w_DriveCopyForkToIFFifo_1),
        .i_freeNext(i_FreeFromIF_1), 
        .rst(rstn),
        .pmt(w_PmtIFFifo_1),
        .o_free(w_FreeIFFifoCopyToFork_1),
        .o_driveNext(o_DriveToIssue_1),
        .o_fire_1(w_cPmtFifo1Fire_1)
);
 

 always @(posedge w_cPmtFifo1Fire_1 or negedge rstn)  begin
        if(!rstn) begin
           r_OutputBranchPC_32 <= 32'b0;
        end
        else begin
        r_OutputBranchPC_32 <= r_BranchPC_32;
        o_BranchPC_32=r_OutputBranchPC_32;
        end
       end



wire w_BranchListNext_16;
wire w_BranchIndexNext_4;
wire w_BranchIndexNow_4;
wire w_IssueFifoFire_1;
wire w_PmtIssueFifo_1;
wire w_DriveIssueFifoTocCopyFork_1;
wire w_FreeIssueToIsueeFifo_1;

assign w_PmtIssueFifo_1=~(w_IsBranch_1);

input wire i_freeFromIssue_1;
output wire o_driveToIssue_1;

cPmtFifo1 cPmtFifo_ToIssue(
        .i_drive(w_DriveCopyForkToIssueFifo_1),
        .i_freeNext(i_freeFromIssue), 
        .rst(rstn),
        .pmt(w_IsBranch_1),
        .o_free(),
        .o_driveNext(o_driveToIssue),
        .o_fire_1(w_IssueFifoFire_1)
);

  always @(posedge w_IssueFifoFire_1 or negedge rstn) begin
        if(!rstn) begin
            r_Instruction_1147 <=  1147'h0;
            r_BranchInstuction <= 73'b0;
        end
        else begin
            w_BranchListNext_16=r_BranchListNext_16;
            w_BranchIndexNow_4=r_BranchIndex_4;
            
      FindBranch FindBranch2(
            .din(w_BranchListNext_16),
            .index(w_BranchIndexNext_4)
    );
            for(integer i=0 ;i<16;i++) begin
            {
                if ((i>w_BranchIndexNow_4) && (i<w_BranchIndexNext_4)) begin
                r_Instruction_1147[72+73*i,0+73*i] <= w_AllInstruction_1443[72+73*i,0+73*i];
                w_InstructionOutput_1147[72+73*i,0+73*i]=r_Instruction_1147[72+73*i,0+73*i];
                end
                else begin
                r_Instruction_1147[72+73*i,0+73*i] <= `nop;     
                w_InstructionOutput_1147[72+73*i,0+73*i]=r_Instruction_1147[72+73*i,0+73*i];
                end
            }
            end
           

               {o_instToIssue0_73, o_instToIssue1_73, o_instToIssue2_73, o_instToIssue3_73, o_instToIssue4_73, o_instToIssue5_73, o_instToIssue6_73, 
              o_instToIssue7_73, o_instToIssue8_73, o_instToIssue9_73, o_instToIssue10_73, o_instToIssue11_73, o_instToIssue12_73, o_instToIssue13_73, 
              o_instToIssue14_73, o_instToIssue15_73}  =  w_InstructionOutput_1147;
        end
            end
      


endmodule