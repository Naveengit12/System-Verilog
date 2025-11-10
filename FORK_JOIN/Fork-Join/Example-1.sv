// -------------------FORK JOIN---------------------------
module fork_join;
  
  initial begin
    fork
      begin
        $display("A is going GYM at time = %0t",$time);
        #15;
        $display("A is reached GYM at time = %0t",$time);
      end
      
      begin
        $display("B is doing workout at time = %0t",$time);
        #20;
        $display("B is completed workout at time = %0t",$time);
      end
      
      begin
        $display("A is started workout at time = %0t",$time);
        #20;
        $display("A is completed workout at time = %0t",$time);
      end
    join
  end
endmodule
