module pack_2d_arr;
  bit[7:0][4:0] data;
  
  initial begin
    for(int i=0;i<8;i=i+1) begin
      $display("data[%0d]=%b",i,data[i]);
    end
  end
endmodule
