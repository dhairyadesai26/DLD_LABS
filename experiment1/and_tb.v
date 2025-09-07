`timescale 1ns/1ps
module and_tb;
    reg a, b;
    wire y;

    and_gate uut(.a(a), .b(b), .y(y));

    initial begin
        $dumpfile("and.vcd");   
        $dumpvars(0, and_tb);

        $display("A B | AND");
        $monitor("%b %b | %b", a, b, y);

        a=0; b=0; #10;
        a=0; b=1; #10;
        a=1; b=0; #10;
        a=1; b=1; #10;
        $finish;
    end
endmodule
