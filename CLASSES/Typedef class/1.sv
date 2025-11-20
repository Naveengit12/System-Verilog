typedef class parent;
  
  class child;
    int data;
    bit[31:0] id;
    parent pt = new();
    
    function void display();
      $display("child : data=%0d,id=%0d",data,id);
      $display("parent : data_p=%0d,person=%0s",pt.data_p,pt.person);
    endfunction
  endclass
  
  class parent;
    int data_p =21333;
    string person = "MISTER";
  endclass
  
module class_parent;
  child cd;
  
  initial begin
    cd = new();
    
    cd.data = 250;
    cd.id = 231;
    
    cd.display();
  end
endmodule


//   output
//   # run -all
// # child : data=250,id=231
// # parent : data_p=21333,person=MISTER
// # exit
