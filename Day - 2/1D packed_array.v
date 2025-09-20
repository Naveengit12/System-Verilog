module packed_array_1D;

  // 1D packed array (vector) of 8 bits
  bit [7:0] packed_array = 8'hA5; 
  integer i;

  initial begin
    $display("Packed 1D array bits:");
    for (i = 7; i >= 0; i--) begin
      $display("packed_array[%0d] = %b", i, packed_array[i]);
    end
  end
endmodule

