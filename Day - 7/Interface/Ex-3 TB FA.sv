// Code your testbench here
module full_adder_tb;
  
  full_adder fa();  // interface
  fulladder dut(fa);  // instantiation
  
  initial begin
    fa.a=0; fa.b=0;fa.C_in=0;
       #5; $display("a=%b,b=%b,C_in=%b,sum=%b,C_out=%b",fa.a,fa.b,fa.C_in,fa.sum,fa.C_out);
    
    fa.a=0; fa.b=0;fa.C_in=1;
      #5; $display("a=%b,b=%b,C_in=%b,sum=%0b,C_out=%0b",fa.a,fa.b,fa.C_in,fa.sum,fa.C_out);
    
     fa.a=0; fa.b=1;fa.C_in=0;
      #5; $display("a=%b,b=%b,C_in=%b,sum=%0b,C_out=%0b",fa.a,fa.b,fa.C_in,fa.sum,fa.C_out);
    
     fa.a=0; fa.b=1;fa.C_in=1;
      #5; $display("a=%b,b=%b,C_in=%b,sum=%0b,C_out=%0b",fa.a,fa.b,fa.C_in,fa.sum,fa.C_out);
    
     fa.a=1; fa.b=0;fa.C_in=0;
      #5; $display("a=%b,b=%b,C_in=%b,sum=%0b,C_out=%0b",fa.a,fa.b,fa.C_in,fa.sum,fa.C_out);
    
     fa.a=1; fa.b=0;fa.C_in=1;
      #5; $display("a=%b,b=%b,C_in=%b,sum=%0b,C_out=%0b",fa.a,fa.b,fa.C_in,fa.sum,fa.C_out);
    
     fa.a=1; fa.b=1;fa.C_in=0;
      #5; $display("a=%b,b=%b,C_in=%b,sum=%0b,C_out=%0b",fa.a,fa.b,fa.C_in,fa.sum,fa.C_out);
    
     fa.a=1; fa.b=1;fa.C_in=1;
      #5; $display("a=%b,b=%b,C_in=%b,sum=%0b,C_out=%0b",fa.a,fa.b,fa.C_in,fa.sum,fa.C_out);
    
  end
endmodule
