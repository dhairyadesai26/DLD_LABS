`include "nand_xor.v"
module nand_xnor(input a, input b, output y);
    wire xor_out;
    nand_xor g1(a, b, xor_out);
    assign y = ~(xor_out & xor_out);
endmodule
