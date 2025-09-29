module struct_pack_signed;
  struct packed signed {
    bit  [7:0] workers;
    logic  [7:0] salary;
  } details;

  initial begin
    // Assign negative and positive values
    details.workers = -8'd1;   // -1 in 8-bit signed
    details.salary =  8'd120;   // 20 in 8-bit signed
    
    // Print each field
    $display("details.workers = %0d", details.workers);
    $display("details.salary = %0d", details.salary);
 
    $display("Whole struct = %0d", details);
  end
endmodule


/*output
# details.workers = 255
# details.salary = 120
# Whole struct = -136 */
