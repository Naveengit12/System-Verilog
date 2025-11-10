    
// -------------------fork-join_none-------------------
module fork_join_none;
  
  initial begin
    fork
      begin
    $display("Bike A is started",$time);
    #30;
    $display("Bike A is reached",$time);
  end
  
  begin
    $display("Bike B is started",$time);
    #50;
    $display("Bike B is reached",$time);
  end
  
  begin
    $display("Bike C is started",$time);
    #80;
    $display("Bike C is reached",$time);
  end
    join_none
    $display("fork-join_none is reached",$time);
  end
endmodule


// output
// # run -all
// # fork-join_none is reached                   0
// # Bike A is started                   0
// # Bike B is started                   0
// # Bike C is started                   0
// # Bike A is reached                  30
// # Bike B is reached                  50
// # Bike C is reached                  80
// # exit
