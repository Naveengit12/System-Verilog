// function arguments in parentheses
module sv_function;
  int a;
  
  // function to add a 2 int values 
  function int sum(input int x,y);
    sum = x + y;
    //     $display("x=%0d,x=%0d,sum=%0d",x,y,sum);
  endfunction
  
  initial begin
    a = sum(4,5);
    $display("a=%0d",a);
  end
endmodule
