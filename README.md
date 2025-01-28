# 5-stage-Piplelined-RISC-Processor

Designed a fully pipelined RV32I processor in Verilog

## 📜 Overview

This repository contains the Verilog implementation of a fully pipelined processor. Through the use of Instruction Level Parallelism (ILP) we are able to increase the throughput of the processor w.r.t a single-cycle architecture. The design incorporates all the essential pipeline stages, including:

1. **Instruction Fetch (IF)**
2. **Decode (D)**
3. **Execute (EX)**
4. **Memory Access (MEM)**
5. **Write-back (WB)**

It also handles true data hazards (RAW), control hazards, and ensures smooth operation using forwarding and stalling mechanisms.
