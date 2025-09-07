#include "nand_or.v"
module nand_nor(input a, input b, output y);
    wire or_out;
    nand_or g1(a, b, or_out);
    assign y = ~(or_out & or_out);
endmodule
