module nand_or(input a, input b, output y);
    wire na, nb;
    assign na = ~(a & a);
    assign nb = ~(b & b);
    assign y = ~(na & nb);
endmodule
