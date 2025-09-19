
module four_state_datatype;
  logic a;   // Changed from wire to logic to allow procedural assignment
  reg b;
  logic c;
  time d;
  integer e;
  real f;

  initial begin
  a = 1'b1;
    b = 1'b0;
    c = 4'd12;           
    d = 64'd18;         
    e = 32'hABD;          
    f = 1.0e3; 
    $display("a=%b, b=%b, c=%b, d=%0d, e=%d,f=%0d", a, b, c, d, e, f);
  end
endmodule
