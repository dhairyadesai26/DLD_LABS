// ==================================================
// All 6 gates using only NOR
// ==================================================

// 1. NOT using NOR
module nor_not(input a, output y);
    assign y = ~(a | a);
endmodule

// 2. AND using NOR
module nor_and(input a, input b, output y);
    wire na, nb;
    assign na = ~(a | a);
    assign nb = ~(b | b);
    assign y  = ~(na | nb);
endmodule

// 3. OR using NOR
module nor_or(input a, input b, output y);
    wire t;
    assign t = ~(a | b);
    assign y = ~(t | t);
endmodule

// 4. XNOR using NOR
module nor_xnor(input a, input b, output y);
    wire t1, t2, t3, t4;
    assign t1 = ~(a | b);
    assign t2 = ~(a | t1);
    assign t3 = ~(b | t1);
    assign t4 = ~(t2 | t3); // XOR
    assign y  = ~(t4 | t4); // invert -> XNOR
endmodule

// 5. XOR using NOR
module nor_xor(input a, input b, output y);
    wire xnor_out;
    nor_xnor g1(a, b, xnor_out);
    assign y = ~(xnor_out | xnor_out);
endmodule

// 6. NAND using NOR
module nor_nand(input a, input b, output y);
    wire and_out;
    nor_and g1(a, b, and_out);
    assign y = ~(and_out | and_out);
endmodule
