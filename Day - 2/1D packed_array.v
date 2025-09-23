module packed_array_1D;

  // 1D packed array (vector) of 8 bits
  bit [7:0] packed_array = 8'hA5; 
  integer i;

  initial begin
    for (i = 0; i< 8; i=i+1) begin
      $display("packed_array[%0d] = %b", i, packed_array[i]);
    end
  end
endmodule

