`timescale 1ns/1ps
module nand_tb;
    reg a, b;
    wire y;

    nand_gate uut(.a(a), .b(b), .y(y));

    initial begin
        $dumpfile("nand.vcd");
        $dumpvars(0, nand_tb);

        $display("A B | NAND");
        $monitor("%b %b | %b", a, b, y);

        a=0; b=0; #10;
        a=0; b=1; #10;
        a=1; b=0; #10;
        a=1; b=1; #10;
        $finish;
    end
endmodule
