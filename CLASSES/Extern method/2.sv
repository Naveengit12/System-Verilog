
class packet;
  extern virtual function void display(bit [31:0] addr, data );
endclass
    
    function void packet::display(bit [31:0] addr, data);
      $display("Addr = %0d Data = %0d",addr,data);
    endfunction
    
module extern_method;
  initial begin
    packet p;
    p = new();
    p.display(50,50); 
  end
endmodule


//     output
//     # run -all
// # Addr = 50 Data = 50
// # exit
