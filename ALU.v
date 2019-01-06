module ALU(out, zr, nr, a, b, zx, nx, zy, ny, f, no);

output [15:0] out;
output zr, nr;
input [15:0] a, b;
input zx, nx, zy, ny, f, no;

wire[15:0] x1, x2, y1, y2;

Mux2to1_16 mux1(x1, a, 16'b0, zx);
wire [15:0] notx1;
NotGate_16Bit gate1(notx1, x1);
Mux2to1_16 mux2(x2, x1, notx1, nx);

Mux2to1_16 mux3(y1, b, 16'b0, zy);
wire [15:0] noty1;
NotGate_16Bit gate2(noty1, y1);
Mux2to1_16 mux4(y2, y1, noty1, ny);

wire [15:0] addres, andres, out1;
wire c;
Adder_16Bit add1(addres, c,x2, y2, 1'b0);
AndGate_16 and1(andres, x2, y2);
Mux2to1_16 mux5(out1, andres, addres, f);

wire[15:0] notout1;
NotGate_16Bit gate3(notout1, out1);
Mux2to1_16 mux6(out, out1, notout1, no);

wire nf;
NotGate gate4(nf, out[15]);
NotGate gate5(nr, nf);

wire zf1, zf2, zfr;
Or8Gate zft1(zf1, out[0], out[1], out[2], out[3], out[4], out[5], out[6], out[7]);
Or8Gate zft2(zf2, out[8], out[9], out[10], out[11], out[12], out[13], out[14], out[15]);
OrGate zft3(zfr, zf1, zf2);
NotGate Gatezfres(zr, zfr);

endmodule
