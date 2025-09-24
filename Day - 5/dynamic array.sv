//write a code for dynamic array... give the value of array using foreach.. display the size..shuffle the array elements...


module dynamic_array;
  int data[];  // Dynamic array declaration

  initial begin
    int i;     // loop index
    int n;     // size of an array
    int tmp;   // temporary variable for swap
    int r;     // random index used for shuffling

    data = new[5];  // Allocate 5 elements

    // Assign values using foreach
    foreach (data[i]) begin
      data[i] = i + 1;  // 1, 2, 3, 4, 5
    end

    // Display size
    $display("Size of array = %0d", data.size());

    // Shuffle the array elements
    n = data.size();
    for (i = n - 1; i > 0; i--) begin
      r = $urandom_range(i, 0);
      tmp = data[i];
      data[i] = data[r];
      data[r] = tmp;
    end

    // Display after shuffle
    foreach (data[i]) begin
      $display("data[%0d] = %0d", i, data[i]);
    end
  end
endmodule



