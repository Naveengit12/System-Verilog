class teacher;
  bit[31:0] sub_teach;
  const int age;
  int students;
  
  function new();
    sub_teach = 5;
    age = 39;
    students = 250;
  endfunction
    
  function void display();
    $display("sub_teach=%0d,age=%0d,students=%0d",sub_teach,age,students);
 endfunction
endclass

module class_teacher;
  teacher tcr;
  
  initial begin
    tcr = new();
//     tcr.sub_teach = 4;
//     tcr.students = 300;
    
    tcr.display();
  end
endmodule


// output
// # run -all
// # sub_teach=5,age=39,students=250
// # exit
