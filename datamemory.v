module DataMemory(opcode,Rt,addr,clk,out);
input [5:0] opcode;
input [31:0] addr;  //Rather than taking Rs and num as inputs, just take their sum (here 'addr') from caller space and send to DataMemory
input [31:0] Rt;	//Rt is the value of the register itself; not the address of the register in the register file
input clk;
output [31:0] out;
//reg [31:0] out;


reg [31:0] memdata [255:0];

initial begin

        //256 data to be added here, each being a 32-bit '0';for simplicity, added just 20 data

	memdata[0] = 32'b00000000000000000000000000000000;
        memdata[1] = 32'b00000000000000000000000000000000;
        memdata[2] = 32'b00000000000000000000000000000000;
        memdata[3] = 32'b00000000000000000000000000000000;
        memdata[4] = 32'b00000000000000000000000000000000;
        memdata[5] = 32'b00000000000000000000000000000000;
        memdata[6] = 32'b00000000000000000000000000000000;
        memdata[7] = 32'b00000000000000000000000000000000;
        memdata[8] = 32'b00000000000000000000000000000000;
        memdata[9] = 32'b00000000000000000000000000000000;
        memdata[10] = 32'b00000000000000000000000000000000;
        memdata[11] = 32'b00000000000000000000000000000000;
        memdata[12] = 32'b00000000000000000000000000000000;
        memdata[13] = 32'b00000000000000000000000000000000;
        memdata[14] = 32'b00000000000000000000000000000000;
        memdata[15] = 32'b00000000000000000000000000000000;
        memdata[16] = 32'b00000000000000000000000000000000;
        memdata[17] = 32'b00000000000000000000000000000000;
        memdata[18] = 32'b00000000000000000000000000000000;
        memdata[19] = 32'b00000000000000000000000000000000;

        end

	assign out = memdata[addr];


always @(negedge clk)
begin
	//if(opcode==6'b100011)
	//begin
	//out = memdata[addr];	//In caller space, 'out' needs to be stored in the register file at the address of Rt given by the instruction
	//end
	
	if(opcode==6'b101011)
	begin
	memdata[addr] = Rt;
	end

end

endmodule

