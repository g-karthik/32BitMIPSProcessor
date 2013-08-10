module RegisterFile(rw,addr1,addr2,out1,out2,addr3,data3,clk);

input rw;  	//A signal that decides whether we write into file (if 1 -> write)
input [4:0] addr1;	//In case of read, the address of first register
input [4:0] addr2;	//In case of read, the address of second register
output [31:0] out1;	//In case of read, the value of the first register
output [31:0] out2;	//In case of read, the value of the second register
input [4:0] addr3;	//In case of write, the address of the register in which to write
input [31:0] data3;	//In case of write, the value to be written
//reg [31:0] out1;
//reg [31:0] out2;

input clk;

reg [31:0] regmem [31:0];

initial begin
	regmem[0] = 32'b00000000000000000000000000000010;		//Register File initialized with random values
        regmem[1] = 32'b00000000000000000000000000000001;
        regmem[2] = 32'b00000000000000000000000000001000;
        regmem[3] = 32'b00000000000000000000000000000110;
        regmem[4] = 32'b00000000000000000000000001000000;
        regmem[5] = 32'b00000000000000000000000000100000;
        regmem[6] = 32'b00000000000000000000000000010000;
        regmem[7] = 32'b00000000000000000000001000000000;
        regmem[8] = 32'b00000000000000000000000010000000;
        regmem[9] = 32'b00000000000000000000000000100000;
        regmem[10] = 32'b00000000000000000000010000000000;
        regmem[11] = 32'b00000000000000000000000100000000;
        regmem[12] = 32'b00000000000000000000000000010010;
        regmem[13] = 32'b00000000000000000000000010100000;
        regmem[14] = 32'b00000000000000000000000000111000;
        regmem[15] = 32'b00000000000000000000011001000000;
        regmem[16] = 32'b00000000000000000000000000100000;
        regmem[17] = 32'b00000000000000000000000000010000;
        regmem[18] = 32'b00000000000000000000000010100000;
        regmem[19] = 32'b00000000000000000000000001000000;
        regmem[20] = 32'b00000000000000000000000101000000;
        regmem[21] = 32'b00000000000000000010000000000000;
        regmem[22] = 32'b00000000000000000001000000000000;
        regmem[23] = 32'b00000000000000000000100000000000;
        regmem[24] = 32'b00000000000000001000000100000000;
        regmem[25] = 32'b00000000000000001100100000000000;
        regmem[26] = 32'b00000000000000000000000100000000;
        regmem[27] = 32'b00000000000000000100100000000000;
        regmem[28] = 32'b00000000000000000000100001000000;
        regmem[29] = 32'b00000000000000000000000100010000;
        regmem[30] = 32'b00000000000010100010000000000000;
        regmem[31] = 32'b00000000000000010000100101100000;

	end

		assign out1 = regmem[addr1];
		assign out2 = regmem[addr2];

	//always@(rw)
	always@ (negedge clk)
	begin
		if(rw==1'b1)
		begin
		 regmem[addr3] = data3;
		end
	end

endmodule



