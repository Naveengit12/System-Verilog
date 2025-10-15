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



// output
// # run -all
// # Ag.a=0,Ag.b=0,Ag.y=0
// # Ag.a=0,Ag.b=1,Ag.y=0
// # Ag.a=1,Ag.b=0,Ag.y=0
// # Ag.a=1,Ag.b=1,Ag.y=1
// # exit
