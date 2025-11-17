# Experiment Log (Example / Template)

This document is a template for recording MCP delay line anode experiments,
configuration settings, and results.
Use it as the starting point for a detailed lab notebook for this project.

Consider keeping one experiment log per major campaign or configuration.

## 1. Test Setup Overview

Summarize the physical setup for the experiment:
- MCP detector model and configuration (including high-voltage settings).
- ASOC/FPGA hardware configuration (board, firmware bitstream, DAQ version).
- Optical or electronic stimulus (e.g., LED pulser, laser, test pulse).

Reference the hardware overview document in `docs/hardware/` for more detail.

## 2. Calibration Workflows

Describe the calibration steps performed before collecting data:
- Timing calibration (e.g., channel-to-channel skew, delay line propagation).
- Position calibration (e.g., mapping delay differences to spatial position).
- Gain or threshold tuning.

Record:
- Procedures followed.
- Data sets used for calibration.
- Any scripts or notebooks used (with paths in the repository).

## 3. Data Collection Protocols

For each run or set of runs, record:
- Date/time and operator.
- Run identifier(s) and corresponding file names written by the DAQ.
- Configuration snapshot (ASOC settings, firmware version, DAQ version).
- Environmental conditions if relevant (temperature, pressure, etc.).

Include a table or bullet list summarizing the runs and their purposes.

## 4. Analysis Methodology

Document how the data are analyzed:
- Reconstruction algorithms used (delay line position, timing extraction).
- Filters or cuts applied to events.
- Metrics computed (resolution, efficiency, rate capability, etc.).

Reference corresponding analysis scripts under `software/analysis/` and
note any key configuration files.

## 5. Results and Observations

Include:
- Representative plots or references to figures (stored under `docs/` or
  a dedicated `results/` directory).
- Quantitative performance summaries.
- Qualitative observations (anomalies, stability issues, TODO items).

## 6. Follow-Up Actions

Track open questions and planned next steps resulting from this experiment:
- Hardware modifications to try.
- Firmware/FPGA changes to implement.
- Additional measurements needed.

