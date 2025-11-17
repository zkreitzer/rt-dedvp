# A3PE Prototype Kit Project Script (Example / Template)
#
# This is an example/template project script in fpga/projects/a3pe_proto_kit/.
# Use this directory to store vendor-specific project configuration targeting
# the A3PE (ProASIC3E) prototype kit described in docs/a3pe_proto_kit_ug.pdf.
#
# In a real project, this script (or the files in this directory) should:
#   - Create/open the FPGA project for the A3PE board
#   - Add HDL sources from fpga/src/
#   - Add constraint files from fpga/constr/
#   - Optionally add simulation/testbench files from fpga/sim/
#   - Define implementation/synthesis options for timing closure
#
# The exact commands depend on the vendor toolchain (e.g., Libero, etc.).
# Replace the placeholders below with the appropriate tool commands.

# Example pseudo-commands (to be adapted):
# project_new "asoc_a3pe_proto" -device A3PExxx
# project_add_source "../src/asoc_fpga_top_example.v"
# project_add_constraint "../constr/asoc_fpga_constraints_example.sdc"
# project_set_option -timing_high_effort true
# project_build
# project_generate_bitstream

