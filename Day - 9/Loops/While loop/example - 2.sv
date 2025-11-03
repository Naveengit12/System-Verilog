module while_false;
  integer count;
  
  initial begin
    count = 50;
    while(count<10) begin
      $display("count=%0d",count);  //while loop when the condition is not satisfied at the beginning
      count++;
    end
  end
endmodule




/*output
# Loading work.while_false(fast)
# 
# run -all
# exit*/
