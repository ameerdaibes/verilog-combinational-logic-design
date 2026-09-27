module mux8to1_structural(
    input  [7:0] I,
    input  [2:0] S,
    output       out
);

wire lower_group;
wire upper_group;

mux4to1 mux_lower(
    .I(I[3:0]),
    .S(S[1:0]),
    .O(lower_group)
);

mux4to1 mux_upper(
    .I(I[7:4]),
    .S(S[1:0]),
    .O(upper_group)
);

mux2to1 mux_final(
    .O1(lower_group),
    .O2(upper_group),
    .S2(S[2]),
    .out(out)
);

endmodule
