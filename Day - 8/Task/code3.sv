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



// output
// # run -all
// # count_A = 1, count_B = 2
// # ****************************
// # count_A = 1
// # count_B = 2
// # ============================
// # count_A = 2, count_B = 4
// # ****************************
// # count_A = 2
// # count_B = 4
// # ============================
// # count_A = 3, count_B = 6
// # ****************************
// # count_A = 3
// # count_B = 6
// # ============================
// # count_A = 4, count_B = 8
// # ****************************
// # count_A = 4
// # count_B = 8
// # ============================
// # count_A = 5, count_B = 10
// # ****************************
// # count_A = 5
// # count_B = 10
// # ============================
// # count_A = 6, count_B = 12
// # ****************************
// # count_A = 6
// # count_B = 12
// # ============================
// # count_A = 7, count_B = 14
// # ****************************
// # count_A = 7
// # count_B = 14
// # ============================
// # count_A = 8, count_B = 16
// # ****************************
// # count_A = 8
// # count_B = 16
// # ============================
// # count_A = 9, count_B = 18
// # ****************************
// # count_A = 9
// # count_B = 18
// # ============================
// # count_A = 10, count_B = 20
// # ****************************
// # count_A = 10
// # count_B = 20
// # ============================
// # exit
