module full_adder(
    input  a,
    input  b,
    input  cin,
    output cout,
    output sum
);

wire ab_xor;
wire ab_and;
wire cin_and;

xor (ab_xor, a, b);
and (ab_and, a, b);
xor (sum, ab_xor, cin);
and (cin_and, cin, ab_xor);
or  (cout, ab_and, cin_and);

endmodule
