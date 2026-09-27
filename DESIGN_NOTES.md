# Design Notes

## Q1: Hierarchical Multiplexer

The original design uses two 4-to-1 multiplexers to process the lower and upper halves of an 8-bit input vector.

```text
I[3:0] ──> 4:1 MUX ──┐
                      ├──> 2:1 MUX ──> out
I[7:4] ──> 4:1 MUX ──┘
```

- `S[1:0]` selects an input inside each group.
- `S[2]` selects which group reaches the output.

This produces the behavior of an 8-to-1 mux through hierarchy rather than a single flat implementation.

## Q2: Arithmetic/Logic System

### Arithmetic block

The 4-bit arithmetic circuit XORs each bit of `B` with the mode signal.

- mode = 0 → B passes unchanged and the initial carry is 0 → addition.
- mode = 1 → B is inverted and the initial carry is 1 → two's-complement subtraction.

The four full adders form a ripple-carry chain.

Signed overflow is generated from the XOR of the carry into and out of the most-significant bit.

### Logic block

The logic path computes both:

```text
A AND B
A OR B
```

A 4-bit mux then uses `S0` to select between them.

### Final result selection

A second 4-bit mux uses `S1` to select between:

- the arithmetic result;
- the selected logical result.
