module queues;
  // Create a queue that stores integer values
  int A[$] = {1, 3, 4, 5, 6};   //unbounded_queue

  initial begin
    // Iterate and access each queue element
    foreach (A[i])
      $display("A[%0d] = %0d", i, A[i]);
  end
  
  integer j,k;
  initial begin
    A.insert(9,j);
    $display(A);
    
    A.delete(6);
    $display(A);
    
    A.push_back(8);
    $display(A);
    
    A.push_front(7);
    $display(A);

    k= A.pop_back();
    $display(k,"",A);
    
    k= A.pop_front();
    $display(k,"",A);
    
    A.reverse();
    $display(A);
    
    A.sort();
    $display(A);
    
    A.rsort();
    $display(A);
    
    A.shuffle();
    $display(A);
  end
endmodule



 /* A[0] = 1
# A[1] = 3
# A[2] = 4
# A[3] = 5
# A[4] = 6

# 1 3 4 5 6
# 1 3 4 5 6 8
# 7 1 3 4 5 6 8
# 87 1 3 4 5 6
# 71 3 4 5 6
# 6 5 4 3 1
# 1 3 4 5 6
# 6 5 4 3 1
# 6 1 4 3 5  /*
    
