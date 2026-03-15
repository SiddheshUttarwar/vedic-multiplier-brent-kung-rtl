# Reproducibility Guide

## Objective

Enable repeatable simulation for the 8x8 Vedic multiplier across machines.

## Environment

- Icarus Verilog: latest stable release
- Optional waveform viewer: GTKWave

## Steps

1. Compile and run simulation using one documented runner.
2. Confirm the exhaustive testbench result is pass.
3. Archive the command output and commit hash.

## Expected output

`PASS: all 65536 vectors matched.`

## Artifacts

- `wave.vcd`
