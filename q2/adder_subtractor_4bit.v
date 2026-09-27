module adder_subtractor_4bit(
    input  [3:0] A,
    input  [3:0] B,
    input        mode,
    output [3:0] S,
    output       overflow
);

wire [3:0] B_selected;
wire [3:0] carry;

xor (B_selected[0], B[0], mode);
xor (B_selected[1], B[1], mode);
xor (B_selected[2], B[2], mode);
xor (B_selected[3], B[3], mode);

full_adder fa0(A[0], B_selected[0], mode,     carry[0], S[0]);
full_adder fa1(A[1], B_selected[1], carry[0], carry[1], S[1]);
full_adder fa2(A[2], B_selected[2], carry[1], carry[2], S[2]);
full_adder fa3(A[3], B_selected[3], carry[2], carry[3], S[3]);

xor (overflow, carry[3], carry[2]);

endmodule
