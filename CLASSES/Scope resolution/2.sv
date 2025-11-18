class counter;
  static int count = 0;

  static function void display(int count);
    count++;
  endfunction
endclass


module class_counter;
  initial begin
    counter::count = 12;
    $display("Count = %0d", counter::count);
  end
endmodule


// output
// # run -all
// # Count = 12
// # exit
