
class unique_data;
  rand bit[15:0] array[10];
  constraint array_c {unique {array};
                      foreach(array[i]) array[i] < 10; }
  
  function void display();
    $display("array = %p",array);
  endfunction
endclass

module class_unique_data;
  unique_data udata;

  initial begin
    udata = new();
    repeat(2) begin
    udata.randomize();
      
    udata.display();
    end
  end
endmodule


// output
// # run -all
// # array = '{5, 9, 8, 7, 1, 6, 4, 2, 0, 3}
// # array = '{9, 7, 2, 3, 1, 4, 0, 5, 6, 8}
// # exit
