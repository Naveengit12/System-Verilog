
//Interface code
interface half_add;
  bit A, B;
  bit sum,carry;	    
endinterface


//Design using interface
module h_a(half_add ha);
  assign ha.sum = ha.A ^ ha.B;
  assign ha.carry = ha.A & ha.B;
endmodule


// Test bench for both
module tb_h_a;
  //interface
  half_add ha();
  
  // instantiation
  h_a dut( ha);
  
   initial begin
    // Apply test vectors
    ha.A = 0; ha.B = 0;
    #10;
     $display("A=%b B=%b | sum=%b carry=%b", ha.A, ha.B, ha.sum, ha.carry);

    ha.A = 0; ha.B = 1;
    #10;
     $display("A=%b B=%b | sum=%b carry=%b", ha.A, ha.B, ha.sum, ha.carry);

    ha.A = 1; ha.B = 0;
    #10;
     $display("A=%b B=%b | sum=%b carry=%b", ha.A, ha.B, ha.sum, ha.carry);

    ha.B = 1; ha.B = 1;
    #10;
     $display("A=%b B=%b | sum=%b carry=%b", ha.A, ha.B, ha.sum, ha.carry);

    $finish;
  end
endmodule




//outputs
// # run -all
// # A=0 B=0 | sum=0 carry=0
// # A=0 B=1 | sum=1 carry=0
// # A=1 B=0 | sum=1 carry=0
// # A=1 B=1 | sum=0 carry=1
// # ** Note: $finish    : testbench.sv(26)
// #    Time: 40 ns  Iteration: 0  Instance: /tb_h_a
// # End time: 02:00:31 on Oct 11,2025, Elapsed time: 0:00:01
