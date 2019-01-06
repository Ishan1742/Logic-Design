module Dlatch(Q, _Q, D, Clk);

input D, Clk;
output Q, _Q;

wire p1, p2, p3;

nand Gate1(p1, D, Clk);
nand Gate2(p2, p1, Clk);
nand Gate3(Q, _Q, p1);
nand Gate4(_Q, Q, p2);

endmodule
