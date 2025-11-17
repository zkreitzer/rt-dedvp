# FPGA Design Notes (Example / Template)

This document is a template for capturing FPGA design decisions, interfaces,
and implementation notes.
Use it as a living document as the ASOC FPGA implementation evolves.

Relevant references for this section include:
- `docs/ASOCv3 Quick Start Guide.pdf` (timing diagrams and usage examples)
- `docs/ASoCv3 Product Sheet.pdf` (I/O characteristics and capabilities)
- `docs/Measurement_results_for_the_ASoC_V3_*.pdf` (performance targets)

## 1. ASOC Interface Timing Requirements

Summarize key timing constraints for the ASOC-FPGA interface:
- ASOC reference clock frequency and phase relationships.
- Setup/hold requirements for data lines relative to clock.
- Trigger latency and timing alignment.

Include annotated timing diagrams extracted from or inspired by the NALU
documentation, customized to your specific design.

## 2. Data Path Architecture

Describe the end-to-end data path from ASOC to host:
- Front-end capture blocks (sampling, deserialization, channel selection).
- Internal buffering (FIFOs, block RAMs, frame builders).
- Packetization or framing used for host transfer.
- Flow control mechanisms (backpressure from host, trigger veto, etc.).

Consider creating block diagrams illustrating:
- Major modules and their interfaces.
- Clock domains and data-width changes.

## 3. Clock Domain Crossing (CDC) Strategy

Document how clock domain crossings are handled:
- Identify all distinct clock domains (ASOC, FPGA fabric, high-speed link).
- For each crossing, specify the chosen CDC technique:
  - Asynchronous FIFOs
  - Handshaked control signals
  - Multi-flop synchronizers
- Justify the choice in terms of timing margins and metastability risk.

Reference any vendor-recommended CDC IP or patterns you adopt.

## 4. Resource Utilization and Timing Closure

Track resource usage and timing as the design matures:
- LUTs, flip-flops, block RAMs, DSP slices.
- Maximum usable clock frequency in each domain.

Record key synthesis/implementation options and constraint changes that
helped close timing (or caused issues).

## 5. Future Enhancements

Maintain a short list of improvements you would like to make to the
FPGA design over time, such as:
- Improved buffering or compression.
- Better diagnostics and internal visibility (e.g., embedded logic analyzers).
- Support for additional readout modes.

