module associative_array;
  bit [7:0] array_int [int];
  
  initial begin
    array_int[5] = 2;
    array_int[10] = 4;
    array_int[7] = 6;
    
    foreach (array_int[i]) 
      $display("array_int[%0d] = %0d", i, array_int[i]);
  end
endmodule
