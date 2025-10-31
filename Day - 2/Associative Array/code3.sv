
module associative_array;
  typedef enum {a, b, c} alp_values;
  bit [7:0] array_data [alp_values];
  bit [7:0] array_int [int];
  
  initial begin 
    array_data[a] = 22;
    array_data[b] = 33;
    array_data[c] = 44;
    
    foreach (array_data[i]) 
      $display("array_data[%s]=%0d",i.name(),array_data[i]);
  end
  
  initial begin 
    array_int[5] = 2;
    array_int[10] = 4;
    array_int[7] = 6;
    
    foreach (array_int[i]) 
      $display("array_int[%0d] = %0d", i, array_int[i]);
  end
endmodule
