// ========Void function============
module sv_function;
  int a;
  
  function void exact_time;
    $display("%0d",$time);
  endfunction
  
  initial begin
    #20;
    exact_time();
    #50;
    exact_time();
  end
endmodule
