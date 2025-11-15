class king;
  int a,b;
  
  virtual function void display(int a, int b);
    $display("king: a=%0d,b=%0d",a,b);
  endfunction
endclass

class king1 extends king;
  function void display(int a, int b);
    $display("king1 : a=%0d,b=%0d", a, b);
  endfunction
endclass

module king_1;
  initial begin
    king k;
    king1 k1;
    k1 = new();
      k = k1;
    
    k.a = 12;
    k.b  = 18;
 
    k.display(k.a, k.b);
  end
endmodule

// output
// # run -all
// # king1 : a=12,b=18
// # exit
