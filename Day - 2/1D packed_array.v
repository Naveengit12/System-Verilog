module packed_array_1D;

  // 1D packed array (vector) of 8 bits
  bit [7:0] packed_array = 8'hA5; 
  initial begin
    $display("Packed 1D array bits:");
    foreach (packed_array[i]) begin
      $display("packed_array[%0d] = %b", i, packed_array[i]);
    end
  end
endmodule
