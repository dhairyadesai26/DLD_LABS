`timescale 1ns/1ps
module not_tb;
    reg a;
    wire y;

    not_gate uut(.a(a), .y(y));

    initial begin
        $dumpfile("not.vcd");
        $dumpvars(0, not_tb);

        $display("A | NOT");
        $monitor("%b | %b", a, y);

        a=0; #10;
        a=1; #10;
        $finish;
    end
endmodule
