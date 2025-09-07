module nand_xor(input a, input b, output y);
    wire t1, t2, t3;
    assign t1 = ~(a & b);
    assign t2 = ~(a & t1);
    assign t3 = ~(b & t1);
    assign y = ~(t2 & t3);
endmodule
