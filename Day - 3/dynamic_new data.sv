module dynamic_arr;
  int data[];
  
  initial begin
    data = new[5];
    data ='{0,1,2,3,4};
    
    foreach(data[i]) begin
      $display("data[%0d]=%d",i,data[i]);
    end
  end
endmodule
