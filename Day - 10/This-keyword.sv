class packet;
  
  //class properties
  bit [15:0] addr;
  bit [15:0] data;
  bit   write;
  string  D_type;
  
  //constructor
  function new(bit [15:0] addr,data,bit write,string D_type);
    this.addr  = addr;
    this.data  = data;
    this.write = write;
    this.D_type = D_type;
  endfunction
  
  //method to display class prperties
  function void display();
    $display("addr  = %0h",addr);
    $display("data  = %0h",data);
    $display("write = %0h",write);
    $display("D_type  = %0s",D_type);
  endfunction
  
endclass

module naveen;
  packet pkt;

  initial begin
    pkt = new(16'h9,16'h4D,0,"GOOD_PKT");
    pkt.display();
  end
  
endmodule
