module mixed_arrays;
  bit[7:0] data[5];
  
  initial begin
    data[1] = 8'hAA;
    data[4] = 8'hAC;
    foreach(data[i]) begin
      $display("data[%d]=%b",i,data[i]);
    end
  end
endmodule



/* output
data[0]=00000000
data[1]=10101010
data[2]=00000000
data[3]=00000000
data[4]=10101100 /*
