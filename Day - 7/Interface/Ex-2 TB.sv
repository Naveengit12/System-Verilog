// Code your testbench here
module andgate_tb;
  //interface
  and_gate Ag();
  
//   instantiation
  andgate dut(Ag);
  
  initial begin
    Ag.a = 0; Ag.b = 0;
    #10;
    $display("Ag.a=%b,Ag.b=%b,Ag.y=%0b", Ag.a,Ag.b,Ag.y);
    
    Ag.a = 0; Ag.b = 1;
    #10;
    $display("Ag.a=%b,Ag.b=%b,Ag.y=%0b", Ag.a,Ag.b,Ag.y);
    
    Ag.a = 1; Ag.b = 0;
    #10;
    $display("Ag.a=%b,Ag.b=%b,Ag.y=%0b", Ag.a,Ag.b,Ag.y);
    
    Ag.a = 1; Ag.b = 1;
    #10;
    $display("Ag.a=%b,Ag.b=%b,Ag.y=%0b", Ag.a,Ag.b,Ag.y);
  end
endmodule
  
