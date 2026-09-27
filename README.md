# Verilog Combinational Logic Design

A Verilog HDL project covering hierarchical multiplexers and a 4-bit combinational arithmetic/logic system. The designs were originally created and simulated in Quartus as part of a Digital Systems project.

## Project Overview

The repository contains two main design tasks.

### Q1 — Hierarchical 8-to-1 Multiplexer

An 8-to-1 multiplexer is constructed structurally from:

- two 4-to-1 multiplexers;
- one 2-to-1 multiplexer.

The lower two select bits choose one input from each 4-input group, while the most significant select bit chooses between the two intermediate outputs.

Files:

```text
q1/
├── mux4to1.v
├── mux2to1.v
└── mux8to1_structural.v
```

### Q2 — 4-bit Arithmetic & Logic System

The second design combines arithmetic and bitwise logic blocks into one selectable 4-bit combinational system.

Implemented components:

- 1-bit full adder;
- 4-bit adder/subtractor;
- signed overflow detection;
- gate-level 2-to-1 multiplexer;
- 4-bit quad multiplexer;
- 4-bit AND array;
- 4-bit OR array;
- top-level arithmetic/logic selector.

Files:

```text
q2/
├── full_adder.v
├── adder_subtractor_4bit.v
├── mux2to1_gatelevel.v
├── mux2to1_4bit.v
├── and_array_4bit.v
├── or_array_4bit.v
└── combinational_logic_system.v
```

## Operation Selection

At the top level, `S1` selects between arithmetic and logic output, while `S0` selects the operation within that group.

| S1 | S0 | Result |
| ---: | ---: | --- |
| 0 | 0 | A + B |
| 0 | 1 | A - B |
| 1 | 0 | A AND B |
| 1 | 1 | A OR B |

The `Overflow` output comes from the 4-bit arithmetic block.

## Design Style

The project demonstrates several Verilog design approaches:

- dataflow modeling with `assign`;
- gate-level modeling using primitives such as `and`, `or`, `xor`, and `not`;
- structural design through module composition;
- ripple-carry arithmetic;
- hierarchical multiplexer construction.

## Verification

The original project was verified in Quartus using vector waveform simulations. The report documented expected examples including:

- 4-to-1 and 2-to-1 mux selection behavior;
- the complete hierarchical mux output;
- 1-bit full-adder sum/carry behavior;
- 4-bit arithmetic results;
- 4-bit AND and OR results;
- correct top-level operation selection.

Generated Quartus databases, compiled programming files, reports, backups, and temporary files are intentionally excluded from this repository.

## Repository Cleanup

The original coursework used personal/student identifiers as some module and project names. For this public repository, those identifiers were replaced with descriptive engineering names while preserving the original functional logic.

## Technologies & Concepts

- Verilog HDL
- Quartus
- Digital logic
- Combinational circuits
- Multiplexers
- Full adders
- Add/subtract circuits
- Overflow detection
- Structural modeling
- Gate-level modeling
- Hierarchical hardware design

## Course Context

**Digital Systems — Verilog HDL Project**

The project focuses on implementing and verifying combinational logic blocks using Verilog HDL.
