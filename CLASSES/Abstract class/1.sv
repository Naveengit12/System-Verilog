virtual class p;
  bit [31:0] data;
  int id;
  
  pure virtual function void display();
endclass

class c extends p;
  function void display();
    $display("Child: Value of data = %0d and id = %0d", data, id);
  endfunction  
endclass

module class_example;
  initial begin
    p P;
    c C;
    C = new();
    
    P = C;
    P.data = 35;
    P.id = 111;
    P.display();
  end
endmodule
