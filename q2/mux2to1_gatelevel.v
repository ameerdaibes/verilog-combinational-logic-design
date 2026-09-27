module mux2to1_gatelevel(
    input  a,
    input  b,
    input  sel,
    output out
);

wire not_sel;
wire select_a;
wire select_b;

not (not_sel, sel);
and (select_a, a, not_sel);
and (select_b, b, sel);
or  (out, select_a, select_b);

endmodule
