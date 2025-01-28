`timescale 1ns/1ps

module RISC_V(clk, rst);
    
    input clk, rst;
            
            
    wire [2:0] LoadSrcD, ResultSrcD;
    wire [3:0] AluControlSrcD;
    wire [2:0] funct3, ImmsrcD;
    wire [1:0] pcsrc,StoreSrcD;
    wire [6:0] op;
    wire MemwriteD, alusrcD, RegwriteD, funct7, ALU_branch;
    wire jalD, jalrD, loadD, storeD,
         jalE, jalrE,loadE, storeE;
    
    RISC_DATAPATH DATAPATH(clk, rst, pcsrc, MemwriteD, 
                     AluControlSrcD, alusrcD, ImmsrcD, RegwriteD,
                     ALU_branch, op, funct3, funct7,jalD, jalrD, loadD, 
                     storeD,
                     //only for output
                    LoadSrcD, ResultSrcD,
                    pcsrc, StoreSrcD, jalE, jalrE, 
                    loadE, storeE);

    
    Controller Contro_Unit(.clk(clk), .rst(rst), .op(op), .funct3(funct3), .funct7(funct7), 
                        .pcsrc(pcsrc), .resultsrc(ResultSrcD), 
                        .memwrite(MemwriteD), .alucontrol(AluControlSrcD), .alusrc(alusrcD),
                        .immsrc(ImmsrcD), .regwrite(RegwriteD), .load_src(LoadSrcD), .store_src(StoreSrcD), 
                        
                        .jalD(jalD), .jalrD(jalrD), .loadD(loadD), 
                        .storeD(storeD), .jalE(jalE), .jalrE(jalrE), .loadE(loadE), 
                        .storeE(storeE), .branch(ALU_branch));
    
     
endmodule
