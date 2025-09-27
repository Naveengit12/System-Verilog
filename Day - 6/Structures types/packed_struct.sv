module packed_structure;
  typedef struct packed  {
    bit [31:0]salary;
    byte age;
  } employee;
  
  initial begin
    employee A1,A2;
    A1.salary = 32'd10000;
    A1.age    = 8'd21;
    $display("A1 = %p",A1);
    
    A2.salary = 32'd15000;
    A2.age    = 8'd24;
    $display("A2 = %p",A2);
  end
endmodule
