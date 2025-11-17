
virtual class naveen;
  bit [31:0] pushups;
  int pullups;
  int deadlift;
  
  pure virtual function void display();
endclass

virtual class naveen_1 extends naveen;
  // override pure virtual (still no implementation = still abstract)
  pure virtual function void display();
endclass

class naveen_2 extends naveen_1;
  function void display();
    $display("naveen_2: pushups=%0d,pullups=%0d,deadlift=%0d",pushups,pullups,deadlift);
  endfunction

endclass

module class_gym;
  initial begin
    naveen   nvn;     
    naveen_1 nvn_1;   
    naveen_2 nvn_2;  

    nvn_2 = new();    
    nvn_1 = nvn_2;   
    nvn   = nvn_1;    

    nvn.pushups = 30;
    nvn.pullups = 15;
    nvn.deadlift = 150;

    nvn.display();    
  end
endmodule


//     output
//     # run -all
// # naveen_2: pushups=30,pullups=15,deadlift=150
// # exit
