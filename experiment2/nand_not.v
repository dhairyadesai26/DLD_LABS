module nand_not(input a, output y);
    assign y = ~(a & a);
endmodule
