module Or8Gate(y, i0, i1, i2, i3, i4, i5, i6, i7);

output y;
input i0, i1, i2, i3, i4, i5, i6, i7;

wire w1, w2, w3, w4, w5, w6;

OrGate Or1(w1, i0, i1);
OrGate Or2(w2, w1, i2);
OrGate Or3(w3, w2, i3);
OrGate Or4(w4, w3, i4);
OrGate Or5(w5, w4, i5);
OrGate Or6(w6, w5, i6);
OrGate Or7(y , w6, i7);

endmodule
