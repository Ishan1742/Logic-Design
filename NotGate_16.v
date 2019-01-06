module NotGate_16Bit(y, a);

output [15:0] y;
input [15:0] a;

NotGate Gate1 [15:0] (y, a);

endmodule
