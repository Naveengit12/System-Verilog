module queues;
  // Create a queue that stores integer values
  int numbers[$] = {1, 2, 3, 4, 5, 6};

  initial begin
    // Iterate and access each queue element
    foreach (numbers[i])
      $display("numbers[%0d] = %0d", i, numbers[i]);
  end
endmodule



/*# numbers[0] = 1
# numbers[1] = 2
# numbers[2] = 3
# numbers[3] = 4
# numbers[4] = 5
# numbers[5] = 6 /*
