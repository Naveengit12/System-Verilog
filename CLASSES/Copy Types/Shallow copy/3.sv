class bulb;
  bit[1:0] switch;
  int power_w;
  
  function new(bit[1:0] switch, int power_w);
    this.switch = switch;
    this.power_w = power_w;
  endfunction
endclass

class wiring;
  bit[31:0] wire_types;
  int length;
  bulb bb;
  
  function new();
    wire_types = 20;
    length = 100;
    bb = new(1,50);
  endfunction
  
  function void display();
    $display("wiring: wire_types=%0d,length=%0d",wire_types,length);
    $display("bulb : bb.switch=%0d,bb.power_w=%0d",bb.switch,bb.power_w);
  endfunction
endclass

module shallow_copy;
  wiring w1,w2;
  
  initial begin
    w1 = new();
    w1.display();
     $display("============================================");
    w2 = new w1;   //shallow copy
    w2.display();
    
    w1.wire_types = 15;
    w1.length = 150;
    w1.bb.switch = 0;
    w1.bb.power_w = 35;
    
    w1.display();
    $display("============================================");
    w2.display();
  end
endmodule
  
  
