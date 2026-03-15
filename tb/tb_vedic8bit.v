`timescale 1ns / 1ps

module tb_vedic8bit;
  reg  [7:0] a;
  reg  [7:0] b;
  wire [15:0] m;

  integer i;
  integer j;
  integer errors;
  reg [15:0] expected;

  vedic8bit dut (
    .A(a),
    .B(b),
    .M(m)
  );

  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, tb_vedic8bit);

    errors = 0;

    for (i = 0; i < 256; i = i + 1) begin
      for (j = 0; j < 256; j = j + 1) begin
        a = i[7:0];
        b = j[7:0];
        #1;

        expected = i * j;
        if (m !== expected) begin
          $display("Mismatch: A=%0d B=%0d DUT=%0d EXP=%0d", i, j, m, expected);
          errors = errors + 1;
        end
      end
    end

    if (errors == 0) begin
      $display("PASS: all 65536 vectors matched.");
    end else begin
      $display("FAIL: %0d mismatches detected.", errors);
    end

    $finish;
  end
endmodule
