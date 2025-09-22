module dynamic_data;
  int data1[3:0];
  bit data2[1:0];
  longint data3[39:0];
  integer i,j,k;
  
  initial begin
    for(i=0;i<4;i=i+1) begin
      $display("data1[%0d]=%b",i,data1[i]);
    end
    for(j=0;j<2;j=j+1) begin
      $display("data2[%0d]=%b",j,data2[j]);
    end
        for(k=0;k<40;k=k+1) begin
          $display("data3[%0d]=%b",k,data3[k]);
  end
  end
endmodule
