// ======================TASk STATIC===============

module task_static;
  
  task static increment_static();
    static int count_A; 
    static int count_B;   

    count_A++;
    count_B += 2;

    $display("count_A = %0d, count_B = %0d", count_A, count_B);
  endtask

  initial begin
    repeat (10) 
      begin
      increment_static();

    // Accessing static variables directly from the task
        $display("****************************");
    $display("count_A = %0d", increment_static.count_A);
    $display("count_B = %0d", increment_static.count_B);
        $display("============================");
      end
  end
endmodule
