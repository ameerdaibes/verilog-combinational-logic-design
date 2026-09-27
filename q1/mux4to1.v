module mux4to1(
    input  [3:0] I,
    input  [1:0] S,
    output       O
);

assign O = I[S];

endmodule
