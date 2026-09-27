module mux2to1(
    input  O1,
    input  O2,
    input  S2,
    output out
);

assign out = (S2 == 1'b0) ? O1 : O2;

endmodule
