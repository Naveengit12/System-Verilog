/*write a code for queue array with 4 elements... insert 1in the 1st index.. delete element in
3rd index... insert 9 as the last element... shuffle, reverse the elements  */



module queues;
  // Create a queue that stores integer values
  int data[$] = {0,1,2,3};   // unbounded queue

  // Display original queue
  initial begin
    int i;
    foreach (data[i])
      $display("data[%0d] = %0d", i, data[i]);
  end
  
  // Perform operations on the queue
  initial begin
    int i;
    
    // Insert 1 at index 1
    data.insert(1, 1);
    $display("\nAfter inserting 1 at index 1:");
    foreach (data[i])
      $display("data[%0d] = %0d", i, data[i]);

    // Delete element at index 3
    data.delete(3);
    $display("\nAfter deleting element at index 3:");
    foreach (data[i])
      $display("data[%0d] = %0d", i, data[i]);

    // Push 9 to the end
    data.push_back(9);
    $display("\nAfter pushing 9 to the end:");
    foreach (data[i])
      $display("data[%0d] = %0d", i, data[i]);

    // Reverse the queue
    data.reverse();
    $display("\nAfter reversing the queue:");
    foreach (data[i])
      $display("data[%0d] = %0d", i, data[i]);

    // Shuffle the queue
    data.shuffle();
    $display("\nAfter shuffling the queue:");
    foreach (data[i])
      $display("data[%0d] = %0d", i, data[i]);
  end
endmodule




/* output
# data[0] = 0
# data[1] = 1
# data[2] = 2
# data[3] = 3
# 
# After inserting 1 at index 1:
# data[0] = 0
# data[1] = 1
# data[2] = 1
# data[3] = 2
# data[4] = 3
# 
# After deleting element at index 3:
# data[0] = 0
# data[1] = 1
# data[2] = 1
# data[3] = 3
# 
# After pushing 9 to the end:
# data[0] = 0
# data[1] = 1
# data[2] = 1
# data[3] = 3
# data[4] = 9
# 
# After reversing the queue:
# data[0] = 9
# data[1] = 3
# data[2] = 1
# data[3] = 1
# data[4] = 0
# 
# After shuffling the queue:
# data[0] = 9
# data[1] = 0
# data[2] = 1
# data[3] = 1
# data[4] = 3 */
