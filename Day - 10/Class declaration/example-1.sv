// ------------------------CLASS DECLARATION---------------------
class student;
  // class properties
  string name;
  int roll_no;
  int marks;

  // Method 1
  task set_details(string n, int r, int m);
    name = n;
    roll_no = r;
    marks = m;
    //     $display("Student details set:Name=%s,roll_no=%0d,Marks=%0d",name,roll_no,marks);
  endtask

  // Method 2
  function void show();
    $display("Student info Name:%s,roll_no:%0d,Marks:%0d",name,roll_no,marks);
  endfunction
endclass : student


// ------------------------TESTBENCH---------------------
module tb_student;
  initial begin
    student s1 = new();         // create object
    s1.set_details("Naveen", 101, 95);
    s1.show();
  end
endmodule
