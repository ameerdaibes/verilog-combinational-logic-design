module combinational_logic_system(
    input  [3:0] A,
    input  [3:0] B,
    input        S0,
    input        S1,
    output [3:0] Result,
    output       Overflow
);

wire [3:0] arithmetic_result;
wire [3:0] and_result;
wire [3:0] or_result;
wire [3:0] logic_result;

adder_subtractor_4bit arithmetic_unit(
    .A(A),
    .B(B),
    .mode(S0),
    .S(arithmetic_result),
    .overflow(Overflow)
);

and_array_4bit and_unit(
    .A(A),
    .B(B),
    .out(and_result)
);

or_array_4bit or_unit(
    .A(A),
    .B(B),
    .out(or_result)
);

mux2to1_4bit logic_selector(
    .a(and_result),
    .b(or_result),
    .sel(S0),
    .out(logic_result)
);

mux2to1_4bit result_selector(
    .a(arithmetic_result),
    .b(logic_result),
    .sel(S1),
    .out(Result)
);

endmodule
