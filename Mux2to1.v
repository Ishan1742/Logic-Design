module Mux2to1(y , a, b, s0);

output y;
input a, b, s0;

wire notS, part1, part2;

NotGate gate1(notS, s0); 
AndGate gate2(part1, notS, a);
AndGate gate3(part2, s0, b);

OrGate gate4(y, part1, part2);

endmodule
