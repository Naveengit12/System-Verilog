class transaction;
  bit[31:0] data;
  int id;
  
  function new();
    data = 2313;
    id = 9991;
  endfunction
  
  function void display();
    $display("data=%0d,id=%0d",data,id);
  endfunction
endclass

class parent_main extends transaction;
  const string model;
  
  function new();
    model = "AX2034";
  endfunction
  
  function void display_p();
    $display("model=%0s",model);
  endfunction
endclass


module class_transaction;
  transaction trans;
  parent_main pm;
  
  initial begin
    trans = new();
    pm = new();
    
//     trans.data = 347;
//     trans.id = 8876;
    
    trans.display();
    pm.display_p();
  end
endmodule

// output
// # run -all
// # data=2313,id=9991
// # model=AX2034
// # exit

    
  
