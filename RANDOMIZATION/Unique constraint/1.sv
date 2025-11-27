class unique_data;
  rand bit[7:0] data1,data2,data3;
  rand bit[7:0] array[5];
  constraint data_c {unique {data1,data2,data3};}
  constraint array_c {unique {array};}
  
  function void display();
    $display("data1 = %0d,data2 = %0d, data3 = %0d",data1, data2, data3);
    $display("array = %p",array);
  endfunction
endclass

module class_unique_data;
  unique_data udata;

  initial begin
    udata = new();
    udata.randomize();
//     repeat(4) begin
      
    udata.display();
//     end
  end
endmodule



// output
// # 
// # run -all
// # data1 = 18,data2 = 227, data3 = 39
// # array = '{10, 201, 11, 196, 47}
// # exit
// # End time: 00:36:17 on Nov 27,2025, Elapsed time: 0:00:01
// # Errors: 0, Warnings: 0
