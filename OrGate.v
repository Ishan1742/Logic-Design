
module OrGate(y, a, b);

output y;
input a,b;

wire p , q;

nand( p, a, a);
nand( q, b, b);
nand( y, p, q);

endmodule