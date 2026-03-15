$ErrorActionPreference = "Stop"

if (-not (Get-Command iverilog -ErrorAction SilentlyContinue)) {
  throw "iverilog is not installed or not on PATH."
}

if (-not (Get-Command vvp -ErrorAction SilentlyContinue)) {
  throw "vvp is not installed or not on PATH."
}

New-Item -ItemType Directory -Force build | Out-Null

iverilog -g2012 -Wall -s tb_vedic8bit -o build/simv -c rtl_sources.f tb/tb_vedic8bit.v
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

vvp build/simv
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

Write-Host "Waveform generated at wave.vcd"
