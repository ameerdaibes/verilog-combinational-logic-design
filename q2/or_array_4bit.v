module or_array_4bit(
    input  [3:0] A,
    input  [3:0] B,
    output [3:0] out
);

or (out[0], A[0], B[0]);
or (out[1], A[1], B[1]);
or (out[2], A[2], B[2]);
or (out[3], A[3], B[3]);

endmodule
