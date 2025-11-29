class parent;
  rand bit [4:0] child;
  constraint addr_data{soft child > 15; } 
endclass

module class_parent;
  parent p;
  initial begin
   // packet pkt;
    p = new();

    repeat(5) begin
      p.randomize() with{child < 25;};
      $display("child = %0d",p.child);
    end
  end
endmodule

