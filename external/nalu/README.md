# NALU Software Integration

NALU is the organization that designs and produces the ASOC (Application-Specific Optical Circuit) chip used in this project.

This directory is intended to hold **NALU-provided software repositories** (for example, as Git submodules or vendor snapshots) that are required to build, configure, or operate the ASOC-based system.

## Usage and Integration Guidelines

- Do not commit large vendor repositories directly into this tree if they are available elsewhere; prefer Git submodules or documented clone instructions.
- When adding a NALU repository, place it under this directory (for example, `external/nalu/asoc-utils/`) and document:
  - The upstream repository URL and commit/tag used
  - Any local modifications or patches
  - How the software is used by this project (firmware, FPGA tooling, analysis, etc.)
- Keep this README up to date with a short list of integrated NALU components.

At present, this directory contains only this README as a placeholder; add actual NALU software when integration requirements are defined.

