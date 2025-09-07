`timescale 1ns/1ps
module nand_and_tb;
    reg a,b; wire y;
    nand_and uut(.a(a), .b(b), .y(y));

    initial begin
        $dumpfile("nand_and.vcd"); $dumpvars(0, nand_and_tb);
        $display("A B | AND(using NAND)");
        $monitor("%b %b | %b", a, b, y);
        a=0;b=0;#10; a=0;b=1;#10; a=1;b=0;#10; a=1;b=1;#10; $finish;
    end
endmodule
