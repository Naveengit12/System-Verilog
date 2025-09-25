/*Create a typdef Instr_t of struct for the instruction and then declare the memory as array of
Instr_t */


module structure_typedef;
  typedef struct {
    logic [3:0]  opcode;  // operation code 
    logic [4:0]  src;     // source register address
    logic [4:0]  dest;    // destination register address
    logic [15:0] imm;     // immediate value
  } instr_t;
  
  
  // Declare memory as array of instr_t
  instr_t memory [0:255];
endmodule 

