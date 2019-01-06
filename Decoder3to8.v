module Decoder3to8(out,in,en);
output[7:0] out;
input [2:0] in;
input en;

NotGate gate1(in0c,in[0]);
NotGate gate2(in1c,in[1]);
NotGate gate3(in2c,in[2]);


AndGate gate4(a1,in0c,in1c);
AndGate gate5(b1,in2c,en);
AndGate gate6(out[0],a1,b1);


AndGate gate7(a2,in[0],in1c);
AndGate gate8(b2,in2c,en);
AndGate gate9(out[1],a2,b2);

AndGate gate10(a3,in0c,in[1]);
AndGate gate11(b3,in2c,en);
AndGate gate12(out[2],a3,b3);

AndGate gate13(a4,in[0],in[1]);
AndGate gate14(b4,in2c,en);
AndGate gate15(out[3],a4,b4);

AndGate gate16(a5,in0c,in1c);
AndGate gate17(b5,in[2],en);
AndGate gate18(out[4],a5,b5);


AndGate gate19(a6,in[0],in1c);
AndGate gate20(b6,in[2],en);
AndGate gate21(out[5],a6,b6);

AndGate gate22(a7,in0c,in[1]);
AndGate gate23(b7,in[2],en);
AndGate gate24(out[6],a7,b7);

AndGate gate25(a8,in[0],in[1]);
AndGate gate26(b8,in[2],en);
AndGate gate27(out[7],a8,b8);

endmodule
