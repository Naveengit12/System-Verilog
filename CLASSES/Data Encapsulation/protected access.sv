 // -----------------------Protected method access in child class---------------------------

class parent;
  int data;
  bit[31:0] id_number;
  
  function new();
    data = 23;
    id_number = 31;
  endfunction
  
  protected function void display();
    $display("data=%0d,id_number=%0d",data,id_number);
  endfunction
endclass

class child_A extends parent;
  bit[31:0] age;
  
  task total_age;
    age = data + id_number;
    display();  //child class accessing protected access method of parent class
    $display("age=%0d",age);
  endtask
endclass

module class_pc;
  child_A ca;
  
  initial begin
    ca = new();
    ca.total_age();
  end
endmodule


// output
// # run -all
// # data=23,id_number=31
// # age=54
// # exit

  
