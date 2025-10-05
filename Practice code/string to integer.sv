module string_to_integer;
  string num_str;
  int num_value;
  int sum;

  initial begin
    num_str = "123";      // Example numeric string
    num_value = num_str.atoi(); // String to integer conversion
    sum = num_value + 100;    // Arithmetic operation

    $display("num_str = %s", num_str); //Original string
    $display("num_value = %0d", num_value); //Converted to intege
    $display("sum = %0d", sum);   //After adding
  end
endmodule


/* output
# num_str = 123
# num_value = 123
# sum = 223 */
