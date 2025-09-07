`timescale 1ns/1ps
module nor_gates_tb;
    reg a, b;
    wire y_not, y_and, y_or, y_xnor, y_xor, y_nand;

    // Instantiate all gates
    nor_not  g1(.a(a), .y(y_not));
    nor_and  g2(.a(a), .b(b), .y(y_and));
    nor_or   g3(.a(a), .b(b), .y(y_or));
    nor_xnor g4(.a(a), .b(b), .y(y_xnor));
    nor_xor  g5(.a(a), .b(b), .y(y_xor));
    nor_nand g6(.a(a), .b(b), .y(y_nand));

    // Dump for GTKWave
    initial begin
        $dumpfile("nor_gates.vcd");
        $dumpvars(0, nor_gates_tb);
    end

    // Apply input combinations
    initial begin
        $display("A B | NOT AND OR XNOR XOR NAND");
        $monitor("%b %b |  %b   %b   %b   %b    %b    %b", 
                  a, b, y_not, y_and, y_or, y_xnor, y_xor, y_nand);

        a=0; b=0; #10;
        a=0; b=1; #10;
        a=1; b=0; #10;
        a=1; b=1; #10;
        $finish;
    end
endmodule
