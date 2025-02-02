`timescale 1ns/1ps




module RegisterFile(A1,A2,A3,WD3,clk, WE3,RD1, RD2, rst, RD3); // A3 is the destination regiter.
    input [4:0] A1,A2,A3;
    input [31:0]WD3;
    input clk, WE3, rst;
    output [31:0] RD1, RD2, RD3;
    
    integer i;
    reg [31:0] mem[0:31];
//    reg [31:0] mem_next;
    
    assign RD3 = mem[7];
    

    always@(negedge clk)
    begin
        if(WE3)     // Because register zero is only to store zero values.
            mem[A3] <= WD3;
    end
    
    // Hold the prvous state.
//    always@ (*) begin
//        mem_next = mem[A3];
//    end 
    
    assign RD1 = mem[A1];
    assign RD2 = mem[A2];
    
    initial begin
        mem[0] = 32'b0; // Hard wired to 0.
        mem[1] = 32'b0;
        mem[2] = 32'd0;
        mem[3] = 32'd0;
        mem[4] = 32'd0;
        for (i = 5; i < 32; i = i + 1) 
            begin
                mem[i] = 32'b0;
            end
       end
endmodule
