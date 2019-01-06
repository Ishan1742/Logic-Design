module Mux2to1_16(y, a, b, s0);

output [15:0] y;
input [15:0] a, b;
input s0;

Mux2to1 My_Gate[15:0] (y, a, b, s0); 

endmodule
