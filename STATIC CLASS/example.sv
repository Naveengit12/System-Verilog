// -------------------static class properties without creating object-------

class packet;
  static byte no_of_pkts_created;
  
  //constructor
  function new();
    no_of_pkts_created++;
  endfunction
    
  //Static method to display class prperties
  static function void display_packets_created();
    $display("\t %0d packets created.",no_of_pkts_created);
  endfunction 
endclass

module static_properties;
  packet pkt[5];
  packet p;

  initial begin
    foreach(pkt[i]) begin
      pkt[i] = new();
    end
    
    //Accesing static Variable with class handle p
    $display("\t %0d packets created.",p.no_of_pkts_created);    
    
    //Accesing static Method with class handle p
    p.display_packets_created();
  end  
endmodule
