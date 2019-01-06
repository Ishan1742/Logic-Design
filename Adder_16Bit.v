module Adder_16Bit(y, c, a, b, cin);

output [15:0] y;
output c;
input [15:0] a, b;
input cin;

wire part1, part2, part3;
Adder_4Bit Gate1(y[3:0], part1, a[3:0], b[3:0], cin);
Adder_4Bit Gate2(y[7:4], part2, a[7:4], b[7:4], part1);
Adder_4Bit Gate3(y[11:8], part3, a[11:8], b[11:8], part2);
Adder_4Bit Gate4(y[15:12], c, a[15:12], b[15:12], part3);

endmodule
