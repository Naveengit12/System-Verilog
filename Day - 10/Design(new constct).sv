// ------------------------new constructor------------------------
class packet;
  //class properties
  bit [15:0] addr;
  bit [15:0] data;
  string D_type;
  //constructor
  function new();
    addr  = 16'hA;
    data  = 16'hDD;
    D_type = "Valid";
  endfunction

  //method to display class prperties
  function void display();
    $display("addr  = %0d",addr);
    $display("data  = %0h",data);
    $display("D_type  = %0s",D_type);
  endfunction
endclass

module sv_constructor;
  packet pkt;
  initial begin
    pkt = new();
    pkt.display();
  end
endmodule
