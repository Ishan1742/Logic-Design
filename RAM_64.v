module Ram64(out, in, addr, read, write, en, Clk);

output [15:0] out;
input [15:0] in;
input [5:0] addr;
input read, write, en, Clk;

wire [63:0] a;

Decoder6to64 r1(a,addr,en);

Register_16Bit r2[63:0](out, in, read, write, a, Clk);

endmodule
