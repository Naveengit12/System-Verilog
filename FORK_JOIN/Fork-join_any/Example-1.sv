
// -------------------FORK-JOIN_ANY----------------------
module fork_join_any;
  
  initial begin
    fork
      begin
    $display("Bike A is started",$time);
    #30;
    $display("Biker A is reached",$time);
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
    join_any
    $display("fork-join_any is reached",$time);
  end
endmodule
