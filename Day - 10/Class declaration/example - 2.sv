class D;
  //class properties
  int x;

  //method-1
  task set(int i);
    x = i;
  endtask

  //method-2
  function int get();
    return x;
  endfunction
endclass

module D_ex;
 D ex; //Creating Handle

  initial begin
    D ex1 = new(); //Creating handle and Object
    ex = new(); //Creating Object for the Handle
    //Accessing Class methods
    ex.set(10);
    ex1.set(20);
    $display(" Value of x = %0d",ex.get());
    $display("Value of x = %0d",ex1.get());
  end
endmodule
