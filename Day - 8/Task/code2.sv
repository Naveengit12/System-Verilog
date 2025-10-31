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



// output
// # run -all
// # a > b is done
// # a = 15, b = 14, y = 1
// # a is greater than b
// # =====================
// # a > b is done
// # a = 17, b = 10, y = 1
// # a is greater than b
// # =====================
// # a > b is done
// # a = 19, b = 10, y = 1
// # a is greater than b
// # =====================
// # a < b is done
// # a = 11, b = 20, y = 2
// # a is less than b
// # =====================
// # a > b is done
// # a = 20, b = 15, y = 1
// # a is greater than b
// # =====================
// # a > b is done
// # a = 20, b = 18, y = 1
// # a is greater than b
// # =====================
// # a < b is done
// # a = 11, b = 13, y = 2
// # a is less than b
// # =====================
// # a < b is done
// # a = 12, b = 20, y = 2
// # a is less than b
// # =====================
// # a > b is done
// # a = 20, b = 19, y = 1
// # a is greater than b
// # =====================
// # a > b is done
// # a = 20, b = 18, y = 1
// # a is greater than b
// # =====================
// # exit
