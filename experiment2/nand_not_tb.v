`timescale 1ns/1ps
module nand_not_tb;
    reg a; wire y;
    nand_not uut(.a(a), .y(y));

    initial begin
        $dumpfile("nand_not.vcd"); $dumpvars(0, nand_not_tb);
        $display("A | NOT(using NAND)");
        $monitor("%b | %b", a, y);
        a=0; #10; a=1; #10; $finish;
    end
endmodule
