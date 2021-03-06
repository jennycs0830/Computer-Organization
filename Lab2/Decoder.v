//Subject:     CO project 2 - Decoder
//--------------------------------------------------------------------------------
//Version:     1
//--------------------------------------------------------------------------------
//Writer:      Luke
//----------------------------------------------
//Date:        
//----------------------------------------------
//Description: 
//--------------------------------------------------------------------------------
`timescale 1ns/1ps
module Decoder(
    instr_op_i,
	RegWrite_o,
	ALU_op_o,
	ALUSrc_o,
	RegDst_o,
	Branch_o
	);
     
//I/O ports
input  [6-1:0] instr_op_i;

output         RegWrite_o;
output [3-1:0] ALU_op_o;
output         ALUSrc_o;
output         RegDst_o;
output         Branch_o;
 
//Internal Signals
reg    [3-1:0] ALU_op_o;
reg            ALUSrc_o;
reg            RegDst_o; 
reg            RegWrite_o;
reg            Branch_o;

//Parameter
always @(instr_op_i) begin
	if(instr_op_i==0)begin
		ALU_op_o<=3'b010;
		RegDst_o<=1'b1;
		RegWrite_o<=1'b1;
		ALUSrc_o<=1'b0;
		Branch_o<=1'b0;
	end
	else if(instr_op_i==4)begin
		ALU_op_o<=3'b001;
		RegDst_o<=RegDst_o; 
		RegWrite_o<=1'b0;
		ALUSrc_o<=1'b0;
		Branch_o<=1'b1;
	end
	else if(instr_op_i==8)begin
		ALU_op_o<=3'b101; 
		RegDst_o<=1'b0;
		RegWrite_o<=1'b1;
		ALUSrc_o<=1'b1;
		Branch_o<=1'b0;
	end
	else if(instr_op_i==10)begin
		ALU_op_o<=3'b110;
		RegDst_o<=1'b0;
		RegWrite_o<=1'b1;
		ALUSrc_o<=1'b1;
		Branch_o<=1'b0;
	end
end

//Main function

endmodule





                    
                    