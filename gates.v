module AND(in1,in2,out);                //this module does a 32-bit AND operation

input [31:0] in1;
input [31:0] in2;
output [31:0] out;

and A0(out[0],in1[0],in2[0]);
and A1(out[1],in1[1],in2[1]);
and A2(out[2],in1[2],in2[2]);
and A3(out[3],in1[3],in2[3]);
and A4(out[4],in1[4],in2[4]);
and A5(out[5],in1[5],in2[5]);
and A6(out[6],in1[6],in2[6]);
and A7(out[7],in1[7],in2[7]);
and A8(out[8],in1[8],in2[8]);
and A9(out[9],in1[9],in2[9]);
and A10(out[10],in1[10],in2[10]);
and A11(out[11],in1[11],in2[11]);
and A12(out[12],in1[12],in2[12]);
and A13(out[13],in1[13],in2[13]);
and A14(out[14],in1[14],in2[14]);
and A15(out[15],in1[15],in2[15]);
and A16(out[16],in1[16],in2[16]);
and A17(out[17],in1[17],in2[17]);
and A18(out[18],in1[18],in2[18]);
and A19(out[19],in1[19],in2[19]);
and A20(out[20],in1[20],in2[20]);
and A21(out[21],in1[21],in2[21]);
and A22(out[22],in1[22],in2[22]);
and A23(out[23],in1[23],in2[23]);
and A24(out[24],in1[24],in2[24]);
and A25(out[25],in1[25],in2[25]);
and A26(out[26],in1[26],in2[26]);
and A27(out[27],in1[27],in2[27]);
and A28(out[28],in1[28],in2[28]);
and A29(out[29],in1[29],in2[29]);
and A30(out[30],in1[30],in2[30]);
and A31(out[31],in1[31],in2[31]);

endmodule

module OR(in1,in2,out);                //this module does a 32-bit OR operation

input [31:0] in1;
input [31:0] in2;
output [31:0] out;

or o0(out[0],in1[0],in2[0]);
or o1(out[1],in1[1],in2[1]);
or o2(out[2],in1[2],in2[2]);
or o3(out[3],in1[3],in2[3]);
or o4(out[4],in1[4],in2[4]);
or o5(out[5],in1[5],in2[5]);
or o6(out[6],in1[6],in2[6]);
or o7(out[7],in1[7],in2[7]);
or o8(out[8],in1[8],in2[8]);
or o9(out[9],in1[9],in2[9]);
or o10(out[10],in1[10],in2[10]);
or o11(out[11],in1[11],in2[11]);
or o12(out[12],in1[12],in2[12]);
or o13(out[13],in1[13],in2[13]);
or o14(out[14],in1[14],in2[14]);
or o15(out[15],in1[15],in2[15]);
or o16(out[16],in1[16],in2[16]);
or o17(out[17],in1[17],in2[17]);
or o18(out[18],in1[18],in2[18]);
or o19(out[19],in1[19],in2[19]);
or o20(out[20],in1[20],in2[20]);
or o21(out[21],in1[21],in2[21]);
or o22(out[22],in1[22],in2[22]);
or o23(out[23],in1[23],in2[23]);
or o24(out[24],in1[24],in2[24]);
or o25(out[25],in1[25],in2[25]);
or o26(out[26],in1[26],in2[26]);
or o27(out[27],in1[27],in2[27]);
or o28(out[28],in1[28],in2[28]);
or o29(out[29],in1[29],in2[29]);
or o30(out[30],in1[30],in2[30]);
or o31(out[31],in1[31],in2[31]);

endmodule

