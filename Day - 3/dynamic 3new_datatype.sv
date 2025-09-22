module dynamic_data;
  int data1[];
  bit data2[];
  longint data3[];
  integer i,j,k;
  
  initial begin
    data1 = new[2];
    foreach(data1[i]) begin
      $display("data1[%0d]=%b",i,data1[i]);
    end
    data2 = new[1];
    foreach(data2[j]) begin
      $display("data2[%0d]=%b",j,data2[j]);
    end
    data3 = new[5];
    foreach(data3[k]) begin
          $display("data3[%0d]=%b",k,data3[k]);
  end
  end
endmodule
