class packet;
  rand bit [4:0] a;
  rand bit [4:0] b;
  rand bit [4:0] c;

  constraint a_value { a == b + c; } 
  constraint b_value { b > 8; }
  constraint c_value { c < 10; }
endclass

module bidirectional_packet;
  initial begin
    packet pkt;
    pkt = new();
    repeat(10) begin
      pkt.randomize();
      $display("a = %0d, b = %0d, c =%0d",pkt.a,pkt.b,pkt.c);
    end
  end
endmodule


// output
// # run -all
// # a = 22, b = 20, c =2
// # a = 17, b = 9, c =8
// # a = 13, b = 13, c =0
// # a = 18, b = 17, c =1
// # a = 15, b = 15, c =0
// # a = 18, b = 17, c =1
// # a = 27, b = 27, c =0
// # a = 16, b = 13, c =3
// # a = 23, b = 21, c =2
// # a = 17, b = 11, c =6
// # exit
