
class college;
  logic [63:0] students;
  int teachers, class_rooms;
  longint std_details;
  
  // Constructor
  function new(logic [63:0] students=0, int teachers=0, int class_rooms=0, longint std_details=0);
    this.students = students;
    this.teachers = teachers;
    this.class_rooms = class_rooms;
    this.std_details = std_details;
  endfunction

  // ---- SHALLOW COPY FUNCTION ----
  function college shallow_copy();
    shallow_copy = new();
    shallow_copy.students    = this.students;
    shallow_copy.teachers    = this.teachers;
    shallow_copy.class_rooms = this.class_rooms;
    shallow_copy.std_details = this.std_details;
  endfunction
endclass


module class_college;
  initial begin
    college clg1, clg2;
    clg1 = new(764, 40, 25, 500);
    clg2 = clg1.shallow_copy();
    $display("students=%0d, teachers=%0d, class_rooms=%0d, std_details=%0d",
             clg1.students, clg1.teachers, clg1.class_rooms, clg1.std_details);

    $display("---- Shallow Copy ----");
    $display("students=%0d, teachers=%0d, class_rooms=%0d, std_details=%0d",
             clg2.students, clg2.teachers, clg2.class_rooms, clg2.std_details);
  end
endmodule


// output
// # run -all
// # students=764, teachers=40, class_rooms=25, std_details=500
// # ---- Shallow Copy ----
// # students=764, teachers=40, class_rooms=25, std_details=500
// # exit
