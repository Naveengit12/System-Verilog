module foreach_loop;
  int array[10] = '{10,20,30,40,50,60,70,80,90,100};
  
  initial begin
  foreach(array[i])
    $display("array[%0d]=%0d",i,array[i]);
  end
endmodule



// output
//  run -all
// # array[0]=10
// # array[1]=20
// # array[2]=30
// # array[3]=40
// # array[4]=50
// # array[5]=60
// # array[6]=70
// # array[7]=80
// # array[8]=90
// # array[9]=100
// # exit
