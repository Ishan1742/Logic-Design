module AndGate_16(y,b,a);

output [15:0] y;
input [15:0] a;
input [15:0] b;

AndGate MyAnd_1[15:0] (y,b,a);

endmodule
