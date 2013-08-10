module PC(pc,in,clk);
//input [6:0] in;
input [31:0] in;  //Converted to 32 bit
input clk;
//output [6:0] pc;
output [31:0] pc;
//reg [6:0] pc;
reg [31:0] pc;

initial begin
	pc=32'b00000000000000000000000000000000;
end

always @(negedge clk)
begin
	pc = in;
end

endmodule


module PC_ALU(newpc,pc,extendaddr,chksignal);
input [31:0] pc;
input [31:0] extendaddr;
input chksignal;

output [31:0] newpc;

assign newpc = (chksignal)?(pc+extendaddr):(pc+1);

endmodule

