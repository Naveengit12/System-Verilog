// ============function call as an expression===============

module sv_function;
  int a;
  
  // function to add a 2 int values 
  function int sum;
    input int x,y;
    return x + y;
  endfunction
  
  initial begin
    a = 10 + sum(19,16);
    $display("a=%0d",a);
  end
endmodule
