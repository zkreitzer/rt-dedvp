# Hardware Overview (Example / Template)

This document is a template for describing the ASOC-based hardware setup
used in this project (detector, front-end electronics, and FPGA/board).
Use it as a starting point for the **real** hardware overview you will create
for your specific lab configuration.

When writing the real document, reference:
- `docs/ASoCv3 Product Sheet.pdf` for ASOC V3 specifications.
- `docs/ASOCv3 Quick Start Guide.pdf` for recommended operating modes.
- `docs/a3pe_proto_kit_ug.pdf` for the A3PE prototype kit details.
- Any custom carrier board or MCP detector notes.

## 1. ASOC V3 Hardware Summary

- ASIC: ASOC V3 waveform digitizer
- Key parameters to document (see Product Sheet):
  - Number of channels
  - Sampling rate and depth
  - Input dynamic range
  - Analog front-end configuration
  - Supported trigger modes

Describe which modes you plan to use for MCP delay line anode work.

## 2. A3PE Prototype Kit and Carrier Board

Summarize the FPGA/board hardware used to interface to ASOC:
- Board model (e.g., A3PE prototype kit) and FPGA device.
- ASOC carrier board or mezzanine card.
- How ASOC connects to the FPGA (connectors, differential pairs, LVDS, etc.).

Capture any useful tables or diagrams from `a3pe_proto_kit_ug.pdf`.

## 3. Pin Mapping and I/O Standards

Create a mapping between logical ASOC/FPGA signals and physical pins:
- ASOC differential clocks and data lines
- Control/status lines (reset, trigger, configuration enables)
- High-speed data output (if separate from control interface)

For each group, specify:
- FPGA pin name/number
- I/O standard (e.g., LVDS, LVCMOS33)
- Direction (input, output, bidirectional)

You may also include a diagram showing the connections between ASOC, FPGA,
MCP detector, and any intermediate analog electronics.

## 4. Power and Thermal Considerations

Document:
- Supply rails required for ASOC, FPGA, and analog front-end.
- Nominal current draw on each rail.
- How power is provided (bench supply, on-board regulators, etc.).
- Any sequencing requirements or constraints.

Include notes on thermal management:
- Whether ASOC or FPGA require heat sinking or airflow.
- Maximum safe operating temperatures.

## 5. External Interfaces and Lab Equipment

List all external connections and instruments used in the system:
- High-voltage supply for MCP
- Signal generators for test pulses
- Oscilloscopes or digitizers used for cross-checks
- Host PC connections (USB, Ethernet, etc.)

For each, specify the purpose and any key configuration details.

