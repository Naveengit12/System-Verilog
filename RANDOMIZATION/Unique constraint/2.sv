typedef enum {apple, banana, cherry, dragon_fruit} f_team;
class fruits_names;
  rand bit[7:0] data[4];
  rand bit[7:0] array[4];
  rand bit[3:0] data1, data2, data3, data4;
  f_team team;

  constraint array_d {unique{array}; }
  constraint data_f { 
    foreach(data[i]) data[i] inside {[25:45]}; 
    unique {data};}
  constraint data_s { unique {data1, data2, data3, data4}; }
  const string fruit_names[4] = '{"apple", "banana", "cherry", "dragon_fruit"};
endclass



module class_fruits;
  fruits_names item;

  initial begin
    item = new();

    repeat(3) begin
      if(item.randomize()) begin
        $display("data1=%0d, data2=%0d, data3=%0d, data4=%0d",item.data1, item.data2, item.data3, item.data4);
        foreach(item.data[i])
          $display("data[%s] = %0d", item.fruit_names[i], item.data[i]);

        foreach(item.array[i])
          $display("array[%0d] = %0d", i, item.array[i]);
         $display("///////////////////////////////");
      end
    end
  end
endmodule


// output
// # run -all
// # data1=9, data2=6, data3=1, data4=7
// # data[apple] = 40
// # data[banana] = 26
// # data[cherry] = 28
// # data[dragon_fruit] = 42
// # array[0] = 188
// # array[1] = 115
// # array[2] = 187
// # array[3] = 230
// # ///////////////////////////////
// # data1=6, data2=5, data3=1, data4=14
// # data[apple] = 27
// # data[banana] = 40
// # data[cherry] = 42
// # data[dragon_fruit] = 39
// # array[0] = 243
// # array[1] = 198
// # array[2] = 139
// # array[3] = 140
// # ///////////////////////////////
// # data1=4, data2=12, data3=8, data4=14
// # data[apple] = 34
// # data[banana] = 44
// # data[cherry] = 35
// # data[dragon_fruit] = 38
// # array[0] = 205
// # array[1] = 57
// # array[2] = 200
// # array[3] = 34
// # ///////////////////////////////
// # exit
