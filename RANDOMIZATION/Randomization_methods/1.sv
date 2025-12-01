class packet_data;
  rand  bit[5:0] addr_value;
  randc bit[5:0] data;  
  
  //pre randomization
  function void pre_randomize();
    $display("Inside pre_randomize");
  endfunction
  
  //post randomization 
  function void post_randomize();
    $display("Inside post_randomize");
    $display("value of addr_data = %0d, data = %0d",addr_value,data);
  endfunction
endclass

module randomize_methods;
  initial begin
    packet_data pkt;
    pkt = new();
    pkt.randomize();
  end
endmodule

// output
// # run -all
// # Inside pre_randomize
// # Inside post_randomize
// # value of addr_data = 62, data = 15
// # exit
