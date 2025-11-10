
module fork_join;

  initial begin
    $display("Starting fork-join with PUSHUPS");

    fork
      begin
        #30;
        $display("Anbu is done 30 pushups");
      end

      begin
        #20;
        $display("Naveen is done 20 pushups");
      end

      begin
        #70;
        $display("praveen is done 100 pushups");
      end
    join

    $display("show all if completed. Continuing execution...");
  end
endmodule
