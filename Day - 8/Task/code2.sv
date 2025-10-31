module task_return_type;

  task compare(input int a, b, output bit [1:0] y);
    if (a > b) begin
      y = 2'h1;
      $display("a > b is done");
      return;
    end

    if (a < b) begin
      y = 2'h2;
      $display("a < b is done");
      return;
    end

    if (a == b) begin
      y = 2'h3;
      $display("a == b is done");
      return;
    end
  endtask

  initial begin
    bit [1:0] y;
    int a, b;

    repeat (10) begin
      a = $urandom_range(10, 20);
      b = $urandom_range(10, 20);

      compare(a, b, y);
      $display("a = %0d, b = %0d, y = %0d", a, b, y);

      if (y == 1)
        $display("a is greater than b");
      else if (y == 2)
        $display("a is less than b");
      else if (y == 3)
        $display("a is equal to b");
      $display("=====================");
    end
  end
endmodule        
