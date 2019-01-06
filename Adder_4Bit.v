module Adder_4Bit(y, c, a, b, cin);

output [3:0] y;
output c;
input [3:0] a, b;
input cin;

wire part1, part2, part3;

FullAdder Gate1(y[0], part1, a[0], b[0], cin);
FullAdder Gate2(y[1], part2, a[1], b[1], part1);
FullAdder Gate3(y[2], part3, a[2], b[2], part2);
FullAdder Gate4(y[3], c, a[3], b[3], part3);

endmodule
