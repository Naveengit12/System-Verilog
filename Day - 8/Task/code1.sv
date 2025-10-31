// ============Task===========

module task_code;

  task compare(input int a,b, output x);
    if(a>b)
      $display("a is greater than b");
    else if(a<b)
      $display("a is less than b");
    else
      $display("a is equal to b");
    
    x = 1;   
  endtask
  
  initial begin
    bit x;
     #10;
    compare(5,10,x);
    if(x)
      $display("comparison at time = $0t", $time);
    
    #20;
    compare(10,10,x);
    if(x)
      $display("comparison at time = %0t", $time);
    
    #30;
    compare(9,8,x);
    if(x)
      $display("comparison at time = $0t", $time);
    
  end
endmodule




// output
// # run -all
// # a is less than b
// # comparison at time = $0t                  10
// # a is equal to b
// # comparison at time = 30
// # a is greater than b
// # comparison at time = $0t                  60
// # exi
