class parent;
  int data;
  string id_number;
  
  function void display_p();
    $display("data=%0d,id_number=%0s",data,id_number);
  endfunction
endclass

class child extends parent;
  bit[31:0] child_data;
  
  function void display();
    $display("child_data=%0d",child_data);
  endfunction
endclass
 

module class_p_c;
  initial begin
    child c;
    c = new();
    c.data = 256;
    c.id_number = "AX210T";
    c.child_data = 91;
    
    c.display_p();
    c.display();
  end
endmodule


// output
//  run -all
// # data=256,id_number=AX210T
// # child_data=91
// # exit
