`timescale 1ns/1ps
module xor_tb;
    reg a, b;
    wire y;

    xor_gate uut(.a(a), .b(b), .y(y));

    initial begin
        $dumpfile("xor.vcd");
        $dumpvars(0, xor_tb);

        $display("A B | XOR");
        $monitor("%b %b | %b", a, b, y);

        a=0; b=0; #10;
        a=0; b=1; #10;
        a=1; b=0; #10;
        a=1; b=1; #10;
        $finish;
    end
endmodule
