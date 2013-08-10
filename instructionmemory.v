module InstructionMemory(inst,pc,clk);
input clk;
input [31:0] pc;
output [31:0] inst;
reg [31:0] inst;

reg [31:0] memdata [127:0];

initial
        begin
        //128 instructions to be added here, each of 32 bits, but for sake of simplicity, only added 7 instructions

        memdata[0] = 32'b00000000000000010001000000100010;
        memdata[1] = 32'b00000000001000100001100000100100;
        memdata[2] = 32'b00000000010000010011000000100101;
        memdata[3] = 32'b00000001100010010101000000100000;
        memdata[4] = 32'b10001100000000010001000000100000;
        memdata[5] = 32'b10101100000000010001000000100000;
        memdata[6] = 32'b00001000000000010001000000100000;
        //memdata[7] = 32'b00000000000000010001000000100000;
        //memdata[8] = 32'b00000000000000010001000000100000;
        //memdata[9] = 32'b00000000000000010001000000100000;

        end

always @(posedge clk)
        begin
                inst = memdata[pc];
        end

endmodule

