class packet;
  rand bit[7:0] addr;
  rand bit[7:0] ID;
  constraint addr_p{addr > 99; addr < 199;}
  constraint ID_p{ID > 10; ID < 130;}
endclass


module class_inline_data;
  packet pkt;
  
  initial begin
    pkt = new();
    repeat(10) begin
      pkt.randomize();
      $display("before inline : addr = %0d, ID = %0d",pkt.addr, pkt.ID);
      pkt.randomize() with {addr >190; addr <210;};
      pkt.randomize() with {ID inside{[10:90]};};
      $display("after inline : addr = %0d, ID = %0d", pkt.addr,pkt.ID);
    end
  end
endmodule


// output
// # run -all
// # before inline : addr = 157, ID = 99
// # after inline : addr = 194, ID = 36
// # before inline : addr = 102, ID = 90
// # after inline : addr = 109, ID = 36
// # before inline : addr = 103, ID = 72
// # after inline : addr = 146, ID = 87
// # before inline : addr = 184, ID = 85
// # after inline : addr = 160, ID = 55
// # before inline : addr = 147, ID = 122
// # after inline : addr = 153, ID = 77
// # before inline : addr = 137, ID = 66
// # after inline : addr = 168, ID = 35
// # before inline : addr = 172, ID = 110
// # after inline : addr = 160, ID = 56
// # before inline : addr = 112, ID = 41
// # after inline : addr = 154, ID = 55
// # before inline : addr = 162, ID = 121
// # after inline : addr = 178, ID = 38
// # before inline : addr = 129, ID = 101
// # after inline : addr = 104, ID = 81
// # exit

      
