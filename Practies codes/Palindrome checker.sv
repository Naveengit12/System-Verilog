module palindrome_check;
  string test_str;      
  bit This_is_palindrome;    //  1 if palindrome, 0 otherwise
  int left, right;      // Index pointers for string comparison

  initial begin
    test_str = "racecar"; // Assign test string value
    This_is_palindrome = 1;    // Assume it's a palindrome initially

    left = 0;                       // Set start index to first character
    right = test_str.len() - 1;     // Set end index to last character

    // Check characters from both ends towards center
    while (left < right) begin
      if (test_str[left] != test_str[right]) begin
        This_is_palindrome = 0;          // Not a palindrome
        break;                      // Exit loop on first mismatch
      end
      left++;                       // Move left pointer towards center
      right--;                      // Move right pointer towards center
    end

    // Output the result based on is palindrome flag
    if (This_is_palindrome)
      $display("'%s'This is a palindrome.", test_str);
    else
      $display("'%s'This is not a palindrome.", test_str);
  end
endmodule
