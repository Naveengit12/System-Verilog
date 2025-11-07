class student;
  
  //class properties
  byte student_id;
    
  //static property 
  static byte no_students;
  
  //constructor
  function new();
    no_students++;
    student_id = no_students;
  endfunction
  
  //method to display class prperties
  function void display();
    $display("student_id  = %0d",student_id);
  endfunction 
endclass

module static_properties;
  student S[3];

  initial begin
    foreach(S[i]) begin
      S[i] = new();
      S[i].display();
    end
  end  
endmodule
