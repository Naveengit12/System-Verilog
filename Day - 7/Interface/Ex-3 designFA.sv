// DESIGN

module fulladder(full_adder fa);
  assign fa.sum = fa.a ^ fa.b ^ fa.C_in;
  assign fa.C_out = fa.a&fa.b | fa.b&fa.C_in | fa.C_in&fa.a;
endmodule
