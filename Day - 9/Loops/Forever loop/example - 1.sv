module forever_loop;
  integer count;
  
  initial begin
    count = 0;
    forever begin
      $display("count=%0d",count);
      count++;
      #10;
    end
  end
  initial begin
    #100;
    $finish;
  end
endmodule
