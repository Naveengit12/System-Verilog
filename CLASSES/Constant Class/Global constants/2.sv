class parent;
  bit[31:0] age;
  const bit success = 1;
  int fail;
  
  function void display();
    $display("age=%0d,success=%0d,fail=%0d",age,success,fail);
  endfunction
endclass

class child_AB extends parent;
  
  function void dispaly();
    $display("age=%0d,success=%0d,fail=%0d",age,success,fail);
  endfunction
endclass

module class_parent;
  parent pt;
  
  initial begin
    pt = new();
    pt.age = 55;
    pt.fail = 1;
    
    pt.display();
    
  end
endmodule

// output
// # run -all
// # age=55,success=1,fail=1
// # exit
// o
