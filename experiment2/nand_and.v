module nand_and(input a, input b, output y);
    wire t;
    assign t = ~(a & b);
    assign y = ~(t & t);
endmodule
