module twoD_array;
  int array[6][2];
  
  int i, j;

  initial begin
    foreach (array[i, j]) begin
      $display("array[%0d][%0d] = %0d", i, j, array[i][j]);
    end
  end
endmodule
