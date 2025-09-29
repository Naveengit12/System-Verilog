module union_data;
  //typedef union{
  union {
    bit[15:0] salary;
    int ID;
  } worker;
  
  initial begin
    //worker w;
    worker.salary = 16'h250;
    $display("salary : %p",worker);
    worker.ID = 'd123;
    $display("ID : %p",worker);  //salary info will be lost
  end
endmodule
    
