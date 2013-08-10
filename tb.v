module top;

reg [31:0] in1;
reg [31:0] in2;
reg [4:0] addr3;
reg [31:0] data3;
reg chksignal;
reg [31:0] in;
reg [31:0] address;

wire [5:0] opcode;
wire [5:0] funct;
wire [31:0] pc;
wire [31:0] inst;
wire [4:0] rs;
wire [4:0] rt;
wire [4:0] rd;
wire [15:0] addr;
wire [31:0] result;
wire [31:0] Rs;
wire [31:0] Rt;
wire [31:0] out;
wire [31:0] extendaddr;
wire [31:0] newpc;

clkGen CLK(clk);
PC pc1(pc,in,clk);
InstructionMemory IM(inst,pc,clk);
Splitter SP(inst,opcode,rs,rt,rd,funct,addr);


ALU al(opcode,funct,in1,in2,result,rw,clk);

RegisterFile RF(rw,rs,rt,Rs,Rt,addr3,data3,clk);

DataMemory DM(opcode,Rt,address,clk,out);

SignExtend SE(addr,extendaddr);  	//inp,oup


PC_ALU alpc(newpc,pc,extendaddr,chksignal);	//chksignal to be used for deciding the amount of increment (+1 or +extendaddr)

always @(*)
begin

        if(opcode==6'b000000)
        begin
                if(funct==6'b100000||funct==6'b100010||funct==6'b100100||funct==6'b100101)
 	        begin
			in1=Rs;
			in2=Rt;
                        addr3=rd;
			data3=result;
			chksignal=1'b0;
			in=newpc;
		end
        end

        if(opcode==6'b100011)
        begin

	in1=Rs;
	in2=extendaddr;
	address=result;
	addr3=rt;
	data3=out;
	chksignal=1'b0;
	in=newpc;

        end

        if(opcode==6'b101011)
        begin

	in1=Rs;
	in2=extendaddr;
	address=result;
	chksignal=1'b0;
	in=newpc;

        end
        if(opcode==6'b000100)
        begin

	in1=Rs;
	in2=Rt;

                if(result==32'b00000000000000000000000000000000)
                begin

		chksignal=1'b1;
		in=newpc;

                end

        end

end

//always @(posedge clk)
//begin
//	in1 <= in1 + 1'b1;
//	in <= in + 1'b1;
//	in2 <= in2 - 1'b1;
//end


initial begin
	//in=6'b000000;
	//in1=32'b00000000000000000000000000000000;
	//in2=32'b00000000111111110000000011110000;
	$monitor("pc = %5d inst=%b in1 = %5d in2 = %5d result = %5d time=%5d clk = %5d",pc,inst,in1,in2,result,$time,clk);
	#10
	$finish;


	end

endmodule

