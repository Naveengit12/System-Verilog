module while_code;
  shortint count;
  
  initial begin
    count = 0;
    while(count<100) begin
    $display("count=%0d",count);
    count++;
  end
  end
endmodule
