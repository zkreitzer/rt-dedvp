# ASOC FPGA Constraints (Example / Template)
#
# This is an example/template .sdc file in fpga/constr/.
# Use this directory to capture **all** timing and I/O constraints for the
# ASOC + A3PE prototype kit design.
#
# When creating real constraints, consult:
#   - docs/ASoCv3 Product Sheet.pdf  (ASOC I/O voltage levels, timing budgets)
#   - docs/ASOCv3 Quick Start Guide.pdf (example FPGA connections)
#   - docs/a3pe_proto_kit_ug.pdf (board-level pinout and I/O standards)
#
# Replace the examples below with board- and design-specific values.

# ---------------------------------------------------------------------------
# Primary clocks
# ---------------------------------------------------------------------------
# Example: 100 MHz system clock from A3PE board oscillator
# create_clock -name {clk_sys} -period 10.000 [get_ports {clk_sys}]

# Example: ASOC reference clock if it is routed through the FPGA
# create_clock -name {clk_asoc} -period 5.000 [get_ports {asoc_clk_in}]

# ---------------------------------------------------------------------------
# ASOC interface timing
# ---------------------------------------------------------------------------
# Use NALU documentation and lab measurements to determine realistic setup and
# hold margins for ASOC data and control signals.
#
# Example input data bus from ASOC into FPGA
# set_input_delay  2.0 -clock {clk_asoc} [get_ports {asoc_data_bus[*]}]
# set_output_delay 1.0 -clock {clk_asoc} [get_ports {asoc_ctrl[*]}]

# ---------------------------------------------------------------------------
# I/O standards and pin locations (board-specific)
# ---------------------------------------------------------------------------
# Example: LVDS pairs for ASOC differential clocks
# set_property IOSTANDARD LVDS [get_ports {asoc_clk_in}]
#
# Example: Single-ended LVCMOS for slow control signals
# set_property IOSTANDARD LVCMOS33 [get_ports {asoc_ctrl[*]}]
#
# Actual syntax and property names depend on the vendor toolchain; adapt these
# examples to match the A3PE/ProASIC3E constraint format.

