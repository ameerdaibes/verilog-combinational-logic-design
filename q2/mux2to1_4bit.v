module mux2to1_4bit(
    input  [3:0] a,
    input  [3:0] b,
    input        sel,
    output [3:0] out
);

mux2to1_gatelevel mux0(a[0], b[0], sel, out[0]);
mux2to1_gatelevel mux1(a[1], b[1], sel, out[1]);
mux2to1_gatelevel mux2(a[2], b[2], sel, out[2]);
mux2to1_gatelevel mux3(a[3], b[3], sel, out[3]);

endmodule
