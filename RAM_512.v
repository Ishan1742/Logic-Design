module Ram512(out, in, addr, read, write, en, Clk);

output [15:0] out;
input [15:0] in;
input [8:0] addr;
input read, write, en, Clk;

wire [511:0] a;

Decoder9to512 r1(a,addr,en);

Register_16Bit r2[511:0](out, in, read, write, a, Clk);

endmodule
