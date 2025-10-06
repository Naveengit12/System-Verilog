module enumerated_types;
  typedef enum{a, b, c} data1;
  typedef enum{ad=4, bc,cd,da} data2;
  typedef enum logic[1:0]{i, j, k} data3;
  
  data1 d1 = c;
  data2 d2 = da;
  data3 d3 = j;
  initial begin
    $display("d1=%0d,name=%s", d1, d1.name);
    $display("d2=%0d,name=%s", d2, d2.name);
    $display("d3=%0d,name=%s", d3, d3.name);
    
  end
endmodule
