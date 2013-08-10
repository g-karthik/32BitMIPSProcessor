module Splitter(inst,opcode,rs,rt,rd,funct,addr);
input [31:0] inst;
output [5:0] opcode;
output [4:0] rs;
output [4:0] rt;
output [4:0] rd;
output [5:0] funct;
output [15:0] addr;
reg [4:0] rs;
reg [4:0] rt;
reg [4:0] rd;
reg [5:0] funct;
reg [15:0] addr;

assign opcode = inst[31:26];

always @(inst)
begin
  
	if(inst[31:26]==6'b000000)
	begin
	rs = inst[25:21];
	rt = inst[20:16];
	rd = inst[15:11];
	funct = inst[5:0];
	end
	else
	begin
	rs = inst[25:21];
	rt = inst[20:16];
	addr = inst[15:0];
	end

end

endmodule


