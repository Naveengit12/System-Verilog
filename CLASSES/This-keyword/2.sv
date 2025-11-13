class college;
  logic[63:0] students;
  int teachers,class_rooms;
  longint std_details;
  
  function new(logic[63:0]students, int teachers, int class_rooms, longint std_details);
    this.students = students;
    this.teachers = teachers;
    this.class_rooms = class_rooms;
    this.std_details = std_details;
  endfunction
endclass

module class_college;
  initial begin
  college clg;
    clg = new(764, 40, 25,500);
    $display("students=%0h,teachers=%0h,class_rooms=%0h,std_details=%0h",clg.students,clg.teachers,clg.class_rooms,clg.std_details);
  end
endmodule


// output
//  run -all
// # students=2fc,teachers=28,class_rooms=19,std_details=1f4
// # exit
