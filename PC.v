module PC(out, in, load, reset, inc, Clk);

output [15:0] out;
input [15:0] in;
input inc, load, reset, Clk;

wire [15:0] outplus, in1, in2, r1;

ALU call(outplus, , , out, 16'b0, 0, 1, 1, 1, 1, 1);
Mux2to1_16 mux1(in2, in1, in, load);
Mux2to1_16 mux2(in1, out, outplus, inc);
Mux2to1_16 mux3(r1, in2, 16'b0, reset);

Register_16Bit reg1(out, r1, 1, 1, 1, Clk);

endmodule
