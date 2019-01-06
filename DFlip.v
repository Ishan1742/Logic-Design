module DFlip(Q, _Q, D, Clk);

input D, Clk;
output Q, _Q;

wire _Clk;

NotGate Gate1(_Clk, Clk);
Dlatch latch1(p1, _p1, D, _Clk);
Dlatch latch2(Q, _Q, p1, Clk);


endmodule
