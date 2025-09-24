//Code for queue build-in methods size, insert (n/2 position, n position, n-1 p delete,pop_front, pop_back, push_front and push_back.


module queue_methods;
  bit [7:0] Q[$];  // Queue of 8-bit elements

  initial begin
    bit [7:0] front, back;
    int middle;

    // Initialize queue with some values
    Q = {10, 20, 30, 40, 50};
    $display("Q = %p, Size = %0d", Q, Q.size());

    // Insert number 99 in the middle of the queue (n/2)
    middle = Q.size() / 2;
    Q.insert(middle, 99);
    $display("After insert 99 (pos %0d): Q = %p", middle, Q);

    // Insert number 65 at the end ,n position
    Q.insert(Q.size(), 65);
    $display("After insert 65 at end (pos %0d): Q = %p", Q.size()-1, Q);

    // Insert number 77 at n-1 position ,one before last
    Q.insert(Q.size() - 1, 77);
    $display("After insert 77 at n-1 position (pos %0d): Q = %p", Q.size()-1, Q);

    // Delete the second last element ,n-2 position
    Q.delete(Q.size() - 2);
    $display("After delete second last element (pos %0d): Q = %p", Q.size() - 2, Q);

    // Delete element at n-1 position ,one before last
    Q.delete(Q.size() - 1);
    $display("After delete at n-1 position (pos %0d): Q = %p", Q.size(), Q);

    // Add number 0 at the front ,push_front
    Q.push_front(0);
    $display("After push_front 0: Q = %p", Q);

    // Add number 99 at the end ,push_back
    Q.push_back(99);
    $display("After push_back 99: Q = %p", Q);

    // Remove (pop) the first element and show it ,pop_front
    front = Q.pop_front();
    $display("Pop front = %0d, Q after pop_front: %p", front, Q);

    // Remove (pop) the last element and show it ,pop_back
    back = Q.pop_back();
    $display("Pop back = %0d, Q after pop_back: %p", back, Q);
  end
endmodule



/* outputs
# Q = '{10, 20, 30, 40, 50}, Size = 5
# After insert 99 (pos 2): Q = '{10, 20, 99, 30, 40, 50}
# After insert 65 at end (pos 6): Q = '{10, 20, 99, 30, 40, 50, 65}
# After insert 77 at n-1 position (pos 7): Q = '{10, 20, 99, 30, 40, 50, 77, 65}
# After delete second last element (pos 5): Q = '{10, 20, 99, 30, 40, 50, 65}
# After delete at n-1 position (pos 6): Q = '{10, 20, 99, 30, 40, 50}
# After push_front 0: Q = '{0, 10, 20, 99, 30, 40, 50}
# After push_back 99: Q = '{0, 10, 20, 99, 30, 40, 50, 99}
# Pop front = 0, Q after pop_front: '{10, 20, 99, 30, 40, 50, 99}
# Pop back = 99, Q after pop_back: '{10, 20, 99, 30, 40, 50} /*
