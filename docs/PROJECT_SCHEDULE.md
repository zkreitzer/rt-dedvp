# ASOC FPGA Project Schedule and Work Plan (Virginia Tech Students)

This document outlines a proposed schedule and work plan for Virginia Tech students
working on the ASOC FPGA project. The plan assumes:

- **Design phase:** Now through **January** (≈ 2–3 months)
- **Implementation & integration:** February–mid March
- **Testing, characterization, and finalization:** mid March–April
- **Senior design completion:** Target **April**

Dates are approximate; adjust based on the actual academic calendar and project
kickoff date.

## Phase 0 – Ramp-Up and Planning (Weeks 1–4)

**Goals:** Become familiar with ASOC hardware, NALU software, FPGA tools, and the
existing documentation in this repository.

**Suggested activities:**

- **ASOC / NALU documentation review**
  - Read NALU-provided documents in `docs/`:
    - `ASOCv3 Quick Start Guide.pdf`
    - `ASoCv3 Product Sheet.pdf`
    - `NaluScope.0.22.3.-.ASoCv3.User.Manual.pdf`
    - `Measurement_results_for_the_ASoC_V3_A_High_Performance_Waveform_Digitizer_System-on-Chip.pdf`
    - `1-s2.0-S0168900219304462-main.pdf` (journal article on ASOC performance)
  - Skim `a3pe_proto_kit_ug.pdf` to understand the FPGA prototyping platform.
- **NALU software familiarization**
  - Explore NALU repositories under `external/nalu/`:
    - `ft60x-rs-main/` – Rust FT60x USB 3.0 FIFO library (for high-rate DAQ).
    - `naluexamples-main/` – Example code for using Nalu Scientific software.
    - `nalusupport-main/` – Nalu Scientific documentation/support site.
  - Identify which components are most relevant for the planned ASOC readout
    (e.g., FT60x-based data paths, naludaq usage, NaluScope workflows).
- **Toolchain setup**
  - Install and validate access to FPGA design tools for the A3PE prototype kit.
  - Set up Python and Rust development environments if needed for host-side
    software (matching versions referenced by NALU repos where practical).
- **Planning**
  - Read `README.md` and the `fpga/`, `firmware/`, and `software/` scaffolding.
  - Refine/annotate this schedule with project-specific dates and assignments.

**Deliverables by end of Phase 0:**

- Confirmed toolchain installations and access to required hardware.
- Updated, project-specific version of this work plan (with owners per task).
- Short summary of relevant NALU resources and how they will be used.

## Phase 1 – FPGA & System-Level Design (Design Phase: Now–January)

**Goals:** Define the ASOC–FPGA interface, data path, and control architecture;
produce initial HDL design and simulation testbenches.

**Key tasks:**

1. **System architecture definition**
   - Define top-level FPGA blocks for ASOC interface, buffering, trigger/clock
     distribution, and data output (e.g., via FT60x or other link).
   - Identify required control and status registers and configuration sequences.
   - Decide how host DAQ or NaluScope will interact with the FPGA.

2. **FPGA interface specification**
   - Document ASOC signal timing and mapping into FPGA I/O (using NALU docs
     and existing bitstreams as references, e.g., `ASoCv3_v67_165_57.bit`).
   - Draft pin and timing constraints for the A3PE prototype kit.
   - Capture these details in `docs/fpga/` (e.g., in `fpga_design_notes_example.md`
     or a new design document).

3. **Initial HDL scaffolding**
   - Use `fpga/src/asoc_fpga_top_example.v` as a starting point to define the
     real top-level module.
   - Create interface modules for ASOC input channels, timing extraction, and
     buffering.
   - Begin building simulation testbenches in `fpga/sim/` for critical blocks.

4. **Simulation environment setup**
   - Define simple stimulus models for ASOC outputs and MCP pulses.
   - Create testbenches that exercise the ASOC interface at representative
     rates.

**Deliverables by end of Phase 1 (≈ January):**

- Draft system block diagram and interface specification in `docs/fpga/`.
- Initial HDL modules for ASOC interface and top-level control.
- Basic simulation testbenches demonstrating correct interface timing.

## Phase 2 – Implementation & Integration (February–mid March)

**Goals:** Implement the full FPGA data path, integrate with NALU software and
firmware (if used), and bring up hardware in the lab.

**Key tasks:**

1. **FPGA implementation and constraints refinement**
   - Complete HDL for data path, buffering, and any trigger/clock logic.
   - Fill in real constraint files in `fpga/constr/` for timing and pin mapping.
   - Create or update vendor project files under `fpga/projects/a3pe_proto_kit/`.

2. **Firmware development (if applicable)**
   - Replace `firmware/src/asoc_firmware_example.c` and
     `firmware/platform/platform_config_example.h` with real code:
     - ASOC register configuration and sequencing.
     - Run control (start/stop acquisitions, mode selection).
   - Define communication protocol between firmware and host.

3. **Host-side DAQ integration**
   - Build on NALU examples (`naluexamples-main/`) and ft60x library
     (`ft60x-rs-main/`) or NALU-provided tools to implement DAQ in
     `software/daq/`.
   - Define data formats and file naming conventions.

4. **Early hardware bring-up**
   - Program the FPGA with initial bitstreams and verify:
     - Clocking and resets.
     - ASOC communication (basic configuration, test patterns).
     - Data link functionality (e.g., FT60x or equivalent).

**Deliverables by mid March:**

- Working FPGA bitstream with verified ASOC communication.
- Basic DAQ path capturing waveforms to disk.
- Firmware (if used) capable of configuring ASOC and controlling runs.

## Phase 3 – Testing, Characterization, and Finalization (mid March–April)

**Goals:** Perform MCP delay line anode characterization measurements, validate
system performance, and produce final documentation and presentations.

**Key tasks:**

1. **MCP delay line anode experiments**
   - Design experiments to measure timing and position resolution using MCP
     delay line anodes.
   - Log experimental conditions and configurations in `docs/experiments/`.

2. **Data analysis and validation**
   - Develop analysis scripts in `software/analysis/` to:
     - Extract timing/position from ASOC waveforms.
     - Compare performance to NALU/ASOC specifications and prior results.
   - Cross-check against NALU documentation and prior measurement reports in
     `docs/`.

3. **System validation testing**
   - Define and execute regression tests for FPGA, firmware, and DAQ software.
   - Document known limitations and future improvement ideas.

4. **Final documentation and presentations**
   - Prepare senior design report sections describing:
     - System architecture and design decisions.
     - Implementation details and testing methodology.
     - Experimental results and conclusions.
   - Update `README.md` and other repo docs to reflect the final state.
   - Prepare slides/posters for final presentations.

**Deliverables by April (project completion):**

- Completed senior design report and final presentation materials.
- Documented and reproducible FPGA/ASOC/DAQ system for MCP delay line anode
  characterization.

## Dependencies Summary

- **FPGA implementation** depends on:
  - Completion of Phase 1 architecture and interface definition.
  - Availability of ASOC pinout and timing from NALU datasheets.
- **Firmware and DAQ software** depend on:
  - Defined register map and communication scheme from the FPGA design.
  - Working hardware link (e.g., FT60x-based USB 3.0 FIFO path).
- **MCP experiments and analysis** depend on:
  - Stable FPGA bitstream and DAQ path.
  - Basic analysis toolchain in place.
- **Final documentation** depends on:
  - Results from characterization and validation.

Students should revisit this plan at least once per month to track progress,
update dates, and ensure dependencies are being met.

