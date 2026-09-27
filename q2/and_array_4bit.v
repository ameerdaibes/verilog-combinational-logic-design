module and_array_4bit(
    input  [3:0] A,
    input  [3:0] B,
    output [3:0] out
);

and (out[0], A[0], B[0]);
and (out[1], A[1], B[1]);
and (out[2], A[2], B[2]);
and (out[3], A[3], B[3]);

endmodule
