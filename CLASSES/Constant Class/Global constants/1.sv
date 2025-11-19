class teacher;
  bit[31:0] subjects_teach;
  int students;
//   const int rank;
  const int rank = 5;
  
  function void display();
    $display("subjects_teach=%0d,students=%0d,rank=%0d",subjects_teach,students,rank);
  endfunction 
endclass

module class_teacher;
  teacher tcr;
  
  initial begin
    tcr = new();
    tcr.subjects_teach = 3;
    tcr.students = 150;
    
    tcr.display();
  end
endmodule

// output
// # run -all
// # subjects_teach=3,students=150,rank=5
// # exit
  
