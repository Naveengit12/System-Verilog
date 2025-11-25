
// ------------------------------function in constraint--------------------------

class pkt_data;
  rand bit [7:0] addr;
  rand bit sel;
  constraint addr_c {addr == get_addr(sel);}
  
  function bit [7:0] get_addr(bit sel);
    return (sel? 100:200);
  endfunction
endclass

module class_pkt;
  pkt_data pkt;
  
  initial begin
    pkt = new();
    
    repeat(10) begin
      pkt.randomize();
      $display("constraint addr = %0d", pkt.addr);
    end
    $display("On functiopn invoke: addr = %0d", pkt.get_addr(1));
  end
endmodule



// output
// Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Nov 25 01:59 2025
// constraint addr = 100
// constraint addr = 200
// constraint addr = 100
// constraint addr = 200
// constraint addr = 200
// constraint addr = 200
// constraint addr = 200
// constraint addr = 200
// constraint addr = 200
// constraint addr = 100
// On functiopn invoke: addr = 100
//            V C S   S i m u l a t i o n   R e p o r t 
// Time: 0 ns
