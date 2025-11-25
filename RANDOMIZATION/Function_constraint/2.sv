
class packet_data;
  rand bit [7:0] start_data;
  rand bit [7:0] end_data;
  
  constraint start_data_c { start_data == s_data(end_data); }
  
  function bit [3:0] s_data(bit [3:0] e_data);
    if(e_data < 4) 
      s_data = 0;
    else 
      s_data = e_data - 4;
  endfunction
  
endclass

module class_packet;
  initial begin
    packet_data pkt_d;
    pkt_d = new();
    repeat(10) begin
      pkt_d.randomize();
      $display("start_data = %0d end_data =",pkt_d.start_data,pkt_d.end_data);
    end
  end
endmodule


// output
// # 
// # run -all
// # start_data = 6 end_data =250
// # start_data = 0 end_data = 32
// # start_data = 10 end_data = 94
// # start_data = 9 end_data =157
// # start_data = 4 end_data =  8
// # start_data = 4 end_data =168
// # start_data = 3 end_data = 55
// # start_data = 0 end_data =208
// # start_data = 11 end_data = 15
// # start_data = 7 end_data =235
// # exit
// # End time: 06:50:09 on Nov 25,2025, Elapsed time: 0:00:01
// # Errors: 0, Warnings: 0
