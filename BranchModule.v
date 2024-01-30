`timescale 1ns / 1ps

module BranchModule(
    input  wire [31:0] i_inst_32,    
    input  wire [31:0] i_addr_32,    
    
	input wire [31:0]  i_OprandL_32;
    input wire [31:0]  i_OprandR_32;

    output wire [31:0] o_branchPC_32,    
    output wire        o_isBranch_1      

);
//input oprand
    wire [31:0] w_rdata1_32=i_OprandL_32; 
    wire [31:0] w_rdata2_32=i_OprandR_32; 


    wire [2:0] w_funct_3;
    wire [6:0] w_opcode_7;
    wire [4:0] w_opcode_CBJ_5;
    wire [3:0] w_opcode_CJALR_4;
   
    

    //define B-type and J-type address
    wire [31:0] w_branchPC_32;
    wire [31:0] w_branchPC_B1_32;
    wire [31:0] w_branchPC_JALR_32;
    wire [31:0] w_branchPC_JAL_32;
 
    wire [4:0] w_rs1_5;
    wire [ 4:0] w_rs2_5;
    
    

    
    assign w_funct_3        = i_inst_32[14:12];
    assign w_opcode_7       = i_inst_32[6:0];
    assign w_opcode_CBJ_5   = {i_inst_32[15:13], i_inst_32[1:0]};
    assign w_opcode_CJALR_4 = i_inst_32[6:2];

  
    //Is B-type branch
    wire w_branchPCflag_BEQ_1   =   (w_funct_3 == `FUNCT3_BEQ)  & (w_rdata1_32 == w_rdata2_32);
    wire w_branchPCflag_BNE_1   =   (w_funct_3 == `FUNCT3_BNE)  & (w_rdata1_32 != w_rdata2_32);
    wire w_branchPCflag_BLT_1   =   (w_funct_3 == `FUNCT3_BLT)  & ($signed(w_rdata1_32) < $signed(w_rdata2_32)) ;
    wire w_branchPCflag_BGE_1   =   (w_funct_3 == `FUNCT3_BGE)  & ($signed(w_rdata1_32) >= $signed(w_rdata2_32));
    wire w_branchPCflag_BLTU_1  =   (w_funct_3 == `FUNCT3_BLTU) & (w_rdata1_32 < w_rdata2_32) ;
    wire w_branchPCflag_BGEU_1  =   (w_funct_3 == `FUNCT3_BGEU) & (w_rdata1_32 >= w_rdata2_32);
    wire w_branchflag = w_branchPCflag_BEQ_1 | w_branchPCflag_BNE_1 | w_branchPCflag_BLT_1 | 
                         w_branchPCflag_BGE_1 | w_branchPCflag_BLTU_1 | w_branchPCflag_BGEU_1;
    
   // Calculate isBranch
    assign w_BJ_1           = ((w_opcode_7 == `OP_BRANCH & w_branchflag ) | (w_opcode_7 == `OP_JALR) | (w_opcode_7 == `OP_JAL)) ;
    assign o_isBranch_1         = w_BJ_1;
  
   
   //Calculate BranchPC
    assign w_branchPC_B1_32 = i_addr_32 + {{20{i_inst_32[31]}}, i_inst_32[7], i_inst_32[30:25], i_inst_32[11:8],1'b0};

    assign w_branchPC_JALR_32   = (w_rdata1_32 + {{20{i_inst_32[31]}}, i_inst_32[31:20]}) & ~1;
    assign w_branchPC_JAL_32    = i_addr_32 + {{12{i_inst_32[31]}}, i_inst_32[19:12], i_inst_32[20], i_inst_32[30:21],1'b0};
    
   

    
    //Define BranchPC
    assign w_branchPC_32        = (w_opcode_7 == `OP_BRANCH) ? w_branchPC_B1_32   :
                                  (w_opcode_7 == `OP_JALR  ) ? w_branchPC_JALR_32 :
                                  (w_opcode_7 == `OP_JAL   ) ? w_branchPC_JAL_32  :
                                                               i_addr_32;
    assign o_branchPC_32        = w_branchPC_32;

endmodule
