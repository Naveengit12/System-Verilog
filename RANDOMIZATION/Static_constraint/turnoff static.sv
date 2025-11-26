
class packet_data;
  rand  bit [7:0] addr_range;  
  static constraint addr_range_data { addr_range == 100; }
endclass

module class_pkt_data;
  initial begin
    packet_data pkt_d1,pkt_d2;
    pkt_d1 = new();
    pkt_d2 = new();
    
    $display("Before disable constraint");    
    pkt_d1.randomize();
    $display("pkt_d1.addr_range = %0d",pkt_d1.addr_range);
    pkt_d2.randomize();
    $display("pkt_d2.addr_range = %0d",pkt_d2.addr_range);  
    
    pkt_d2.addr_range_data.constraint_mode(0);
    
    $display("After disable constraint");
    pkt_d1.randomize();
    $display("pkt_d1.addr_range = %0d",pkt_d1.addr_range);
    pkt_d2.randomize();
    $display("pkt_d2.addr_range = %0d",pkt_d2.addr_range);
  end
endmodule

// output
//  run -all
// # Before disable constraint
// # pkt_d1.addr_range = 100
// # pkt_d2.addr_range = 100
// # After disable constraint
// # pkt_d1.addr_range = 220
// # pkt_d2.addr_range = 178
// # exit
// # End time: 09:32:41 on Nov 26,2025, Elapsed time: 0:00:01
// # Errors: 0, Warnings: 0
