module clkGen(out);
output out;
reg    out;
                        //Tested and fully functional
initial begin
        out = 1'b0;
end

always
begin
        out = #1 ~out;
end
endmodule

