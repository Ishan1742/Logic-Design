module NotGate(y, a);

input a;
output y;

nand Gate(y, a, a);

endmodule
