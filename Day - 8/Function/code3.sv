// =======function declarations with return keyword========
module sv_function;
  int a;
  
  // function to add a 2 int values 
  function int sum( input int x,y);
//     input int x,y;
    return x + y;
  endfunction
  
  initial begin
    a = sum(19,16);
    $display("a=%0d",a);
  end
endmodule
