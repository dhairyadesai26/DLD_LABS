`timescale 1ns/1ps
module nand_nor_tb;
    reg a,b; wire y;
    nand_nor uut(.a(a), .b(b), .y(y));

    initial begin
        $dumpfile("nand_nor.vcd"); $dumpvars(0, nand_nor_tb);
        $display("A B | NOR(using NAND)");
        $monitor("%b %b | %b", a, b, y);
        a=0;b=0;#10; a=0;b=1;#10; a=1;b=0;#10; a=1;b=1;#10; $finish;
    end
endmodule
