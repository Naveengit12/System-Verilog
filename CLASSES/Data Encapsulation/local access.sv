// ---------------Access within the class scope-------------

class parent_info;
  int family_members;
  bit[31:0] group;
  string parent_name;
  
  function new();
    family_members = 7;
    group = 10;
    parent_name = "jawa";
  endfunction
  
  function void display();
    $display("family_members=%0d,group=%0d,parent_name=%0s",family_members,group,parent_name);
  endfunction
endclass

module parent_class;
  parent_info pi;
  
  initial begin
    pi = new();
    pi.display();
  end
endmodule
    


// output
// # run -all
// # family_members=7,group=10,parent_name=jawa
// # exit
