class packet_data;
  rand bit[3:0] a;
  rand bit[7:0] b;

  constraint sab { solve a before b;}
  constraint a_b { (a == 1) -> b == 0;}
endclass

module class_data;
  initial begin
    packet_data pkt;
    pkt = new();
    repeat(10) begin
      pkt.randomize();
      $display("a = %0d, b = %0d",pkt.a,pkt.b);
    end
  end
endmodule

// output
// # run -all
// # a = 3, b = 51
// # a = 5, b = 210
// # a = 11, b = 116
// # a = 5, b = 141
// # a = 7, b = 107
// # a = 3, b = 40
// # a = 15, b = 240
// # a = 6, b = 131
// # a = 3, b = 129
// # a = 3, b = 210
// # exit
