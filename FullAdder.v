
module FullAdder(s, c, a, b, cin);

output s, c;
input a, b, cin;

wire sum1, c1, c2;

XorGate Gate1(sum1, a, b);
XorGate Gate2(s, sum1, cin);

AndGate Gate3(c1, a, b);
AndGate Gate4(c2, sum1, cin);
OrGate Gate5(c, c1, c2);

endmodule