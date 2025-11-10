module fork_join_none;

  initial begin
    $display("Starting fork-join_none");
    
    fork
      begin
        #100;
        $display("Process 1 completed");
      end
      begin
        #50;
        $display("Process 2 completed");
      end
      begin
        #80;
        $display("Process 3 completed");
      end
    join_none

    $display("fork-join_none completed");
  end
endmodule



// output
// # run -all
// # Starting fork-join_none
// # fork-join_none completed
// # Process 2 completed
// # Process 3 completed
// # Process 1 completed
// # exit
