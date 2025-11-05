module repeat_loop;
  int a[10] = '{10,20,30,40,50,60,70,80,90,100};
  int i;
  
  initial begin
    repeat($size(a)) begin
      
      $display("a[%0d]=%0d",i,a[i]);
    i++;
    end
  end
endmodule
