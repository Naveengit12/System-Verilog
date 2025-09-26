module enum_type;
  
  typedef enum logic [3:0]{
    ADD = 4'd2,
    SUB = 4'd3,
    JE  = 4'd10,
    JNE = 4'd11,
    LD  = 4'd12,
    ST  = 4'd13
  } opcode_data;
  
    // Declare a variable of this enum type
  /*opcode_data  current_opcode;

  initial begin
    // Example usage
    current_opcode = ADD;
    $display("Current Opcode = %0d", current_opcode);
    current_opcode = LD;
    $display("current opcode = %d", current_opcode);
  end*/
endmodule
