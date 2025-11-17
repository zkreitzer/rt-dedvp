# NALU Software Integration

NALU is the organization that designs and produces the ASOC (Application-Specific Optical Circuit) chip used in this project.

This directory holds **NALU-provided software repositories** (for example, as Git snapshots or submodules) that are required to build, configure, or operate the ASOC-based system, or that provide reference documentation and examples.

## Integrated NALU Components

The following NALU repositories are currently checked into `external/nalu/` as vendor snapshots. They should be treated as third-party code; avoid modifying them directly unless coordinated with NALU or clearly documented.

### `ft60x-rs-main/`

- **Upstream package name:** `ft60x_rs` (Rust crate)
- **Version (from `Cargo.toml`):** `0.1.0`
- **Upstream repository URL:** `https://github.com/NaluScientific/ft60x/`
- **Description:** Library for interfacing with FTDI FT60x USB 3.0 FIFO ICs via bindings to the D3XX library.
- **Intended use in this project:**
  - Provides a building block for high-throughput host-side data acquisition from ASOC readout hardware that uses FT60x-based USB 3.0 FIFOs.
  - May be used as a reference or dependency when implementing Rust-based DAQ tools or services.

### `naluexamples-main/`

- **Package name:** `naluexamples` (Python package)
- **Version (from `src/naluexamples/_version.py`):** `0.1.0`
- **Description:** Example code for using Nalu Scientific's software stack (e.g., DAQ and control libraries).
- **Intended use in this project:**
  - Serves as a reference for how NALU's Python APIs are used in practice.
  - Can inform or be adapted into scripts under `software/daq/` for configuring ASOC hardware and acquiring data.

### `nalusupport-main/`

- **Description:** Source for the Nalu Scientific support site, built with Jekyll (using the Just the Docs theme) and containing documentation and tooling scripts.
- **Relevant content for this project:**
  - Landing pages, FAQs, and product documentation for ASOC and related hardware.
  - Utility scripts (e.g., `update_qs_docs_ver.py`, `update_product_docs_ver.py`, `update_naluscope_ver.py`) used by NALU to manage Quick Start, product, and NaluScope documentation.
- **Intended use in this project:**
  - As an offline copy of NALU documentation and examples for reference.
  - Not expected to be modified; consult NALU's official site for authoritative, up-to-date content.

## Usage and Integration Guidelines

- Prefer referencing these repositories as external dependencies or examples rather than copying code into project-specific modules unless necessary.
- When adding additional NALU repositories under `external/nalu/`, document for each:
  - The upstream repository URL and, if known, the commit/tag used.
  - Any local modifications or patches.
  - How the software is used by this project (firmware, FPGA tooling, host DAQ, analysis, documentation, etc.).
- Keep this README up to date with a short list of integrated NALU components and how they relate to the ASOC FPGA project.
