module repeat_loop;
  int a[10] = '{10,20,30,40,50,60,70,80,90,100};
  int i;
  
  initial begin
    repeat($size(a)) begin
      
      $display("a[%0d]=%0d",i,a[i]);
    i++;
    end
    repeat(5) 
      $display("naveen");
   
  end
endmodule


// output
// # run -all
// # a[0]=10
// # a[1]=20
// # a[2]=30
// # a[3]=40
// # a[4]=50
// # a[5]=60
// # a[6]=70
// # a[7]=80
// # a[8]=90
// # a[9]=100
// # naveen
// # naveen
// # naveen
// # naveen
// # naveen
// # exit
