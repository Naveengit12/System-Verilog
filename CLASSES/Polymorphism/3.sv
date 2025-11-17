
// =======Only base class has class properties declared=====

class parent_data;
  int team;
  string name;
  
  function void display();
    $display("parent_data : team=%0d,name=%0s",team,name);
  endfunction
endclass

class child_data extends parent_data;
  function void display();
    $display("child_data : team=%0d,name=%0s",team,name);
  endfunction
endclass

module class_pc;
  initial begin
    parent_data pd;
    child_data cd;
    cd = new();
    
    pd = cd;
    
    pd.team = 5;
    pd.name = "ferrari";
    
    cd.team = 10;
    cd.name = "lamborghini";
    
    pd.display();
  end
endmodule


// output
// # run -all
// # parent_data : team=10,name=lamborghini
// # exit
