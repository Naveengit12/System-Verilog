class parent;
  bit[31:0] a;
  int b;
  
  virtual function void display();
    $display("parant: a=%0d,b=%0d",a,b);
  endfunction
endclass

class child extends parent;
  bit[31:0] a;
  int b;
  
   function void display();
    $display("child : a=%0d,b=%0d",a,b);
  endfunction
endclass

module class_pc;
  initial begin
    parent P;
    child C;
    C = new();
    
    P = C;
    C.a = 14;
    C.b = 41;
//     C.display();
    
    P.a = 444;
    P.b = 111;
    P.display();
  end
endmodule


// output
// # run -all
// # child : a=14,b=41
// # exit
