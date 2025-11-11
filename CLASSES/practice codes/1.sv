class bike;
  bit[31:0] data;
endclass

module bike_details;
  bike b1,b2;
  initial begin
    b1 = new();
    b1.data = 9;
    b2 = b1;
    $display("b1.data=%0h",b1.data);
    $display("b2.data=%0h",b2.data);
    
    b2.data = 10;
    $display("b1.data=%0h",b1.data);
    $display("b2.data=%0h",b2.data);
  end
endmodule



// output
//  run -all
// # b1.data=9
// # b2.data=9
// # b1.data=a
// # b2.data=a
// # exit
