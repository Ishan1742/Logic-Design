
module Decoder9to512(out, in, en);

output [511:0] out;
input [8:0] in;
input en;

wire [7:0] en1;
Decoder3to8 gate1(en1, in[2:0], en);

Decoder6to64 gate2(out[63:0], in[8:3], en1[0]);
Decoder6to64 gate3(out[127:64], in[8:3], en1[1]);
Decoder6to64 gate4(out[191:128], in[8:3], en1[2]);
Decoder6to64 gate5(out[255:192], in[8:3], en1[3]);
Decoder6to64 gate6(out[319:256], in[8:3], en1[4]);
Decoder6to64 gate7(out[383:320], in[8:3], en1[5]);
Decoder6to64 gate8(out[447:384], in[8:3], en1[6]);
Decoder6to64 gate9(out[511:448], in[8:3], en1[7]);

endmodule