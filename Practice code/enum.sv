module enumerated_types;
  typedef enum{a, b, c} data;
  
  data d = c;
  initial begin
    $display("d=%0d,data=%s", d, d.name);
  end
endmodule
