// This is an example/template testbench file in fpga/sim/.
// Files in this directory provide simulation environments for verifying
// ASOC interface timing, data capture, and framing logic.
// Replace this example with testbenches that exercise your real design.

`timescale 1ns/1ps

module asoc_readout_tb_example;
  reg clk = 0;
  reg rst_n = 0;
  // TODO: declare stimulus and connect to DUT.

  always #5 clk = ~clk;

  initial begin
    // TODO: drive stimulus and check results.
    #1000 $finish;
  end
endmodule

