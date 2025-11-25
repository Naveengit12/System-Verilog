class parent_details;
  rand bit[7:0] data_A;
  rand bit[7:0] data_B;

  constraint data_A_a { data_A inside {[100:200]}; }
  constraint data_B_b { data_B inside {40,60,80}; }
endclass


module class_details;
  parent_details pds;

  initial begin
    pds = new();
    pds.randomize();
    $display("Before disable: data_A=%0d, data_B=%0d",pds.data_A, pds.data_B);
    
    pds.constraint_mode(0);
    pds.randomize();
    $display("After disable ALL: data_A=%0d, data_B=%0d",pds.data_A, pds.data_B);


    pds.constraint_mode(1);
    pds.randomize();
    $display("After enable ALL: data_A=%0d, data_B=%0d",pds.data_A, pds.data_B);

    pds.data_A_a.constraint_mode(0);
    pds.randomize();
    $display("After disable data_A constraint: data_A=%0d, data_B=%0d",pds.data_A, pds.data_B);

    $display("Constraint mode data_A_a = %0d", pds.data_A_a.constraint_mode());
    $display("Constraint mode data_B_b = %0d", pds.data_B_b.constraint_mode());

  end
endmodule


// output
// # 
// # run -all
// # Before disable: data_A=115, data_B=60
// # After disable ALL: data_A=234, data_B=208
// # After enable ALL: data_A=145, data_B=60
// # After disable data_A constraint: data_A=54, data_B=80
// # Constraint mode data_A_a = 0
// # Constraint mode data_B_b = 1
// # exit
// # End time: 08:29:19 on Nov 25,2025, Elapsed time: 0:00:01
// # Errors: 0, Warnings: 0
