# Contributing Guide

Thanks for contributing.

## Development setup

1. Clone the repository.
2. Install Icarus Verilog (`iverilog`, `vvp`) for local simulation.
3. Optional: install Vivado for synthesis and additional analysis.

## Verification commands

- Linux/macOS: `make run`
- Windows CMD: `run_icarus.bat`
- Windows PowerShell: `powershell -ExecutionPolicy Bypass -File .\run_icarus.ps1`

## Contribution expectations

- Keep pull requests focused and small.
- Update tests/docs with behavioral changes.
- Avoid checking in generated simulation artifacts.

## Pull request checklist

- Code compiles and simulation is clean.
- README/docs updated where needed.
- CI passes.
