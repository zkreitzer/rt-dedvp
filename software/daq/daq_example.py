"""ASOC DAQ Example (Template)

This example/template script lives in software/daq/ and is intended to show
where host-side data acquisition logic will be implemented.

In a real application, this layer would:
  * Configure the ASOC hardware (possibly via embedded firmware APIs).
  * Stream waveform data from the FPGA (e.g., over FT60x using ft60x_rs or
    via the naludaq Python APIs).
  * Store raw and/or processed data to disk for later analysis.

Relevant NALU references (see docs/):
  * ASoCv3 Product Sheet.pdf
  * ASOCv3 Quick Start Guide.pdf
  * NaluScope.0.22.3.-.ASoCv3.User.Manual.pdf

This file should be replaced (or copied/renamed) when implementing real DAQ
software, but the structure below can be used as a starting point.
"""

from __future__ import annotations

from pathlib import Path
from typing import Any


def configure_hardware() -> None:
    """Placeholder for hardware configuration.

    TODO: use naludaq or a custom library to connect to the ASOC board
    and configure sampling, triggering, and channel enables.
    """


def acquire_run(output_dir: Path) -> None:
    """Placeholder for a single acquisition run.

    TODO: connect to the data stream (FT60x, Ethernet, etc.), collect
    a block of events, and write them to files under ``output_dir``.
    Document the file format you choose in docs/experiments/.
    """


def main(args: list[str] | None = None) -> int:
    """Entry point for example DAQ script.

    Typical real-world flow:
      1. Parse command-line arguments (run ID, output directory, etc.).
      2. Initialize logging and environment.
      3. Configure hardware and ASOC settings.
      4. Perform one or more acquisition runs.
    """

    # TODO: parse args and derive an output directory.
    output_dir = Path("./data_example")
    output_dir.mkdir(parents=True, exist_ok=True)

    configure_hardware()
    acquire_run(output_dir)

    return 0


if __name__ == "__main__":  # pragma: no cover - manual entry point
    raise SystemExit(main())

