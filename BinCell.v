module BinCell(out, in, read, write, en, Clk);

output out;
input in, read, write, en, Clk;

wire er, ew;
AndGate gate1(er, read, en);
AndGate gate2(ew, write, en);

wire in1, in2, _Q;
Mux2to1 Gate1(in1, in2, in, ew);
DFlip flip1( in2, _Q, in1, Clk);

bufif1 b4(out, in2, er);

endmodule
