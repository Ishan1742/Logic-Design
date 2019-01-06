module XorGate(y, a, b);

output y;
input a,b;

wire p, q, r, s;

nand(p,a,a);
nand(q,b,b);

nand(r,p,b);
nand(s,q,a);

nand(y,r,s);

endmodule
