class packet;
  rand bit[7:0] addr;
  
  constraint addr_p{addr dist{1:=5,[2:8] :=7};}
endclass

module class_packet;
  packet pkt;
  
  initial begin
    pkt = new();
    repeat(8) begin
      pkt.randomize();
      $display("addr(:=)=%0d",pkt.addr);
    end
  end
endmodule

// output
// addr(:=)=3
// addr(:=)=3
// addr(:=)=6
// addr(:=)=7
// addr(:=)=1
// addr(:=)=2
// addr(:=)=8
// addr(:=)=3
//            V C S   S i m u l a t i o n   R e p o r t 
// Time: 0 ns
