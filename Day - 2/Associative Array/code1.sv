//======== ASSOCIATIVE ARRAY =========

module associative_array;
  typedef enum {a, b, c} alp_values;
  bit [7:0] array_data [alp_values];
 
  
  initial begin
    
    array_data[a] = 22;
    array_data[b] = 33;
    array_data[c] = 44;
    
    foreach (array_data[i]) 
      $display("array_data[%s]=%0d",i.name(),array_data[i]);
  end
endmodule
