class packet;
  byte packet_id;
  static byte no_of_pkts_created;
  
  //constructor
  function new();
    no_of_pkts_created++;
    packet_id = no_of_pkts_created;
  endfunction
  
  //method to display class prperties
  function void display(); 
    $display("packet_id  = %0d",packet_id);
  endfunction 
endclass

module static_properties;
  packet pkt[5];

  initial begin
    foreach(pkt[i]) begin
      pkt[i] = new();
      pkt[i].display();
    end
  end  
endmodule




// output
//  run -all
// # packet_id  = 1
// # packet_id  = 2
// # packet_id  = 3
// # packet_id  = 4
// # packet_id  = 5
// # exit
