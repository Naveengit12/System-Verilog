class A;
  int i = 10;
endclass

class B;
  int j = 25;
  A a = new();
endclass

module A_B;
  B b1, b2;
  
  initial begin
    b1 = new();
    b2 = new b1;
    b2.j = 10;
    b2.a.i = 30;
    $display("b1.j =%0d",b1.j);
    $display("b2.j=%0d",b2.j);
    $display("b1.a.i=%0d",b1.a.i);
             $display("b2.a.i=%0d",b2.a.i);
  end
endmodule



// output
// # run -all
// # b1.j =25
// # b2.j=10
// # b1.a.i=30
// # b2.a.i=30
// # exit
  
  
