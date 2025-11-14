class parent;
  int data;
  string id_number;
  
  function void display_p();
    $display("data=%0d,id_number=%0s",data,id_number);
  endfunction
endclass

class child1 extends parent;
  bit[31:0] child_data;
  
  function void display_c1();
    $display("child_data=%0d",child_data);
  endfunction
endclass
 
class childA extends child1;
  bit[31:0] data_A;
  
  function void display_A();
    $display("data_A=%0d",data_A);
  endfunction
endclass

class childB extends childA;
  int code;
  
  function void display_B();
    $display("code=%0d",code);
  endfunction
endclass

module class_p_c;
  initial begin
    childB cB;
    cB = new();
    cB.data = 256;
    cB.id_number = "AX210T";
    cB.child_data = 91;
    cB.data_A = 278;
    cB.code = 101;
    
    
    cB.display_p();
    cB.display_c1();
    cB.display_A();
    cB.display_B();
  end
endmodule

// output
//  run -all
// # data=256,id_number=AX210T
// # child_data=91
// # data_A=278
// # code=101
// # exit
