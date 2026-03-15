`timescale 1ns / 1ps

// Legacy compatibility wrappers used by the original RTL hierarchy.
module andg(output y, input a, b);
  and u_and(y, a, b);
endmodule

module org(output y, input a, b);
  or u_or(y, a, b);
endmodule

module fulladder(input a, b, cin, output s, cout);
  assign {cout, s} = a + b + cin;
endmodule

// Simple 16-bit carry propagation adder used by the 8-bit Vedic top.
module carryPropAdder(
  input [15:0] A,
  input [15:0] B,
  input Cin,
  output [15:0] S,
  output Cout
);
  assign {Cout, S} = A + B + Cin;
endmodule
