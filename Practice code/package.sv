package pkg;
//  bit a,b,c,d;
bit [3:0]a=5;
bit [3:0]b=6;
bit [3:0]c=7;
bit [3:0]d=8;
endpackage
 //import pkg::*;
module top;
 logic [3:0]w,x,y,z;
 
  import pkg::a;   // explicit import of a
 import pkg::*;   // wilcard import of pkg.
 
  assign x = a;  // referes to pkg::a, it was explicitly imported
  assign y = b; // pkg::b is now imported
   bit c;  //       pkg::c is no longer a candidate for import
 
  initial $display("x=%0d y=%0d c=%0d d=%0d",x,y,c,d);

endmodule



// output
// x=5 y=6 c=0 d=8
