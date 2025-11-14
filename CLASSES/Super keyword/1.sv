class A;
  int king;
  
  function void display();
    $display("parent : king=%0d",king);
  endfunction
endclass

class child extends A;
  int king;
  
  function void display();
    super.king = 27;
    super.display();
    $display("child : king=%0d",king);
  endfunction
endclass
  
  
module super_keyword;
  initial begin
    child c;
    c = new();
    
    c.king = 30;
    c.display();
  end
endmodule


// output
// # run -all
// # parent : king=27
// # child : king=30
// # exit
    
  
