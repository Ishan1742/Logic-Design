module AndGate(y, a, b);

output y;
input a, b;

wire p;

nand(p, a, b);

nand(y, p, p);

endmodule
