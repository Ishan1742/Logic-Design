module Decoder6to64(out, in, en);

output [63:0] out;
input [5:0] in;
input en;

wire [7:0] en1;
Decoder3to8 gate1(en1, in[2:0], en);

Decoder3to8 gate2(out[7:0], in[5:3], en1[0]);
Decoder3to8 gate3(out[15:8], in[5:3], en1[1]);
Decoder3to8 gate4(out[23:16], in[5:3], en1[2]);
Decoder3to8 gate5(out[31:24], in[5:3], en1[3]);
Decoder3to8 gate6(out[39:32], in[5:3], en1[4]);
Decoder3to8 gate7(out[47:40], in[5:3], en1[5]);
Decoder3to8 gate8(out[55:48], in[5:3], en1[6]);
Decoder3to8 gate9(out[63:56], in[5:3], en1[7]);

endmodule
