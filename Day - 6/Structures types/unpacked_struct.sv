module unpacked_structure;
  typedef struct {
    bit [31:0]salary;
    string ID;
    byte age;
    string name;
  } employee;
  
  initial begin
    employee A1,A2;
    A1.salary = 32'd10000;
    A1.ID     = "AB1";
    A1.age    = 8'd21;
    A1.name   = "OG";
    $display("A1 = %p",A1);
    
    A2.salary = 32'd15000;
    A2.ID     = "AB2";
    A2.age    = 8'd24;
    A2.name   = "OMI";
    $display("A2 = %p",A2);
  end
endmodule
