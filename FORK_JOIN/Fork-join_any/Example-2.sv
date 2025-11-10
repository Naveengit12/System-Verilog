
module fork_join_any;

  initial begin
    $display("Starting fork-join_any");
    
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
    join_any

    $display("One process completed. Continuing execution...");
  end
endmodule


// output
// # run -all
// # Starting fork-join_any
// # Process 2 completed
// # One process completed. Continuing execution...
// # Process 3 completed
// # Process 1 completed
// # exit
