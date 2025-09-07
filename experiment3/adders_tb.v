`timescale 1ns/1ps
module adders_tb;
    reg a, b, cin;
    wire sum_half, carry_half;
    wire sum_full, carry_full;

    half_adder HA(.a(a), .b(b), .sum(sum_half), .carry(carry_half));

    full_adder FA(.a(a), .b(b), .cin(cin), .sum(sum_full), .carry(carry_full));

    // Waveform dump
    initial begin
        $dumpfile("adders.vcd");
        $dumpvars(0, adders_tb);
    end

    initial begin
        $display("A B Cin | HA_Sum HA_Carry | FA_Sum FA_Carry");

        a=0; b=0; cin=0; #10;
        a=0; b=0; cin=1; #10;
        a=0; b=1; cin=0; #10;
        a=0; b=1; cin=1; #10;
        a=1; b=0; cin=0; #10;
        a=1; b=0; cin=1; #10;
        a=1; b=1; cin=0; #10;
        a=1; b=1; cin=1; #10;

        $finish;
    end
    initial begin
        $monitor("%b %b  %b  |    %b       %b     |    %b       %b", 
                  a, b, cin, sum_half, carry_half, sum_full, carry_full);
    end
endmodule
