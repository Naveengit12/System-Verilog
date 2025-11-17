// ===========================polymorphism==========================

class parent_data;
  bit[31:0] age;
  int height;
  string five_sons;
  
  virtual function void display();
    $display("parent_data : age=%0d,height=%0d,five_sons=%0s",age,height,five_sons);
  endfunction
endclass

class child_A extends parent_data;
  function void display();
    $display("child_A : age=%0d,height=%0d,five_sons=%0s",age,height,five_sons);
  endfunction
endclass

class child_B extends parent_data;
  function void display();
    $display("child_B : age=%0d,height=%0d,five_sons=%0s",age,height,five_sons);
  endfunction
endclass

class child_C extends parent_data;
  function void display();
    $display("child_C : age=%0d,height=%0d,five_sons=%0s",age,height,five_sons);
  endfunction
endclass

class child_D extends parent_data;
  function void display();
    $display("child_D : age=%0d,height=%0d,five_sons=%0s",age,height,five_sons);
  endfunction
endclass

class child_E extends parent_data;
  function void display();
    $display("child_E : age=%0d,height=%0d,five_sons=%0s",age,height,five_sons);
  endfunction
endclass

module class_parent;
  initial begin
    parent_data pd_A,pd_B,pd_C,pd_D,pd_E;
    child_A a = new();
    child_B b = new();
    child_C c = new();
    child_D d = new();
    child_E e = new();
    
    a.age = 15;
    a.height = 100;
    a.five_sons = "A";
    
    b.age = 18;
    b.height = 120;
    b.five_sons = "B";
    
    c.age = 20;
    c.height = 150;
    c.five_sons = "C";
    
    d.age = 20;
    d.height = 153;
    d.five_sons = "D";
    
    e.age = 24;
    e.height = 166;
    e.five_sons = "E";
    
    pd_A = a;
    pd_B = b;
    pd_C = c;
    pd_D = d;
    pd_E = e;
    
    pd_A.age = 27;
    pd_A.height = 180;
    pd_A.five_sons = "A";
    
    pd_A.display();
    pd_B.display();
    pd_C.display();
    pd_D.display();
    pd_E.display();
  end
endmodule


// output
// # run -all
// # child_A : age=27,height=180,five_sons=A
// # child_B : age=18,height=120,five_sons=B
// # child_C : age=20,height=150,five_sons=C
// # child_D : age=20,height=153,five_sons=D
// # child_E : age=24,height=166,five_sons=E
// # exit
