
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
