`timescale 1ns/1ps
module nand_or_tb;
    reg a,b; wire y;
    nand_or uut(.a(a), .b(b), .y(y));

    initial begin
        $dumpfile("nand_or.vcd"); $dumpvars(0, nand_or_tb);
        $display("A B | OR(using NAND)");
        $monitor("%b %b | %b", a, b, y);
        a=0;b=0;#10; a=0;b=1;#10; a=1;b=0;#10; a=1;b=1;#10; $finish;
    end
endmodule
