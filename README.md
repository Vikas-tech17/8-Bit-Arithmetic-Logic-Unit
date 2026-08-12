# 8-Bit Arithmetic Logic Unit

## 📌 Overview

This project implements an **8-bit Arithmetic Logic Unit (ALU)** using synthesizable RTL and verifies its functionality using a **SystemVerilog self-checking testbench**.

The ALU performs arithmetic, logical, shift, and data-transfer operations based on a 3-bit operation select input.

## 🔹 Operations

| Opcode | Operation |
|--------|-----------|
| `000` | Addition |
| `001` | Subtraction |
| `010` | AND |
| `011` | OR |
| `100` | XOR |
| `101` | Logical Left Shift |
| `110` | Logical Right Shift |
| `111` | Pass A |

## 🚩 Status Flags

The ALU generates the following status flags:

- **Carry** — indicates carry/no-borrow status during arithmetic operations
- **Overflow** — detects signed arithmetic overflow
- **Zero** — indicates that the ALU result is zero
- **Negative** — indicates a negative result based on the most significant bit

## 🧪 Verification

A dedicated **SystemVerilog testbench** is used for functional verification.

The verification includes:

- Directed test cases
- Arithmetic corner cases
- Logical and shift operations
- Status flag verification
- Randomized input testing
- Automatic expected-versus-actual comparison
- Pass/fail reporting

The self-checking testbench automatically identifies mismatches between the expected and actual ALU outputs.

## 📚 Key Learning

This project provided practical experience in:

- RTL modeling of combinational datapath logic
- Arithmetic and logical operation implementation
- Status flag generation
- Signed overflow detection
- SystemVerilog testbench development
- Task-based stimulus generation
- Self-checking functional verification
- Directed and randomized testing
- Simulation-based debugging

## 🛠️ Tools & Technologies

- Verilog HDL
- SystemVerilog
- RTL Design
- Functional Verification
- ModelSim / QuestaSim
- Git & GitHub

## 📂 Project Structure

```text
8-Bit-Arithmetic-Logic-Unit/
│
├── ALU/
│   ├── 01_8Bit_ALU_RTL.sv
│   └── 01_8Bit_ALU_TB.sv
│
└── README.md
