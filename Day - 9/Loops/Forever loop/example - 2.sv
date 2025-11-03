// ---------------------BREAKE--------------------------
module forever_break;
  int count;
  
  initial begin
//     count = 25;
    forever begin
      $display("count=%0d",count);
      count++;
      
    if(count == 100) break;
    end
  end
endmodule
