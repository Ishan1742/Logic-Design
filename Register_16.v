module Register_16Bit(out, in, read, write, en, Clk);

output [15:0] out;
input [15:0] in;
input read, write, en, Clk;

BinCell bin [15:0] (out, in, read, write, en, Clk);

endmodule
