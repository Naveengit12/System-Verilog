class parent_details;
  rand bit[7:0] data_A;
  rand bit[7:0] data_B;

  constraint data_A_a { data_A inside {[100:200]}; }
 static constraint data_B_b { data_B inside {40,60,80}; }
endclass


module class_details;
  parent_details pds1,pds2;

  initial begin
    pds1 = new();
    pds2 = new();
    
    pds1.randomize();
    pds2.randomize();
    $display("Before disable: data_A=%0d, data_B=%0d",pds1.data_A, pds2.data_B);
    
    pds2.constraint_mode(0);
    pds1.randomize();
    pds2.randomize();
    $display("After disable ALL: data_A=%0d, data_B=%0d",pds1.data_A, pds2.data_B);


    pds1.constraint_mode(1);
    pds1.randomize();
    pds2.randomize();
    $display("After enable ALL: data_A=%0d, data_B=%0d",pds1.data_A, pds2.data_B);

    pds1.data_A_a.constraint_mode(0);
    pds2.randomize();
    $display("After disable data_A constraint: data_A=%0d, data_B=%0d",pds1.data_A, pds2.data_B);

    $display("Constraint mode data_A_a = %0d", pds1.data_A_a.constraint_mode());
    $display("static Constraint mode data_B_b = %0d", pds2.data_B_b.constraint_mode());

  end
endmodule


// output
// # run -all
// # Before disable: data_A=115, data_B=40
// # After disable ALL: data_A=200, data_B=178
// # After enable ALL: data_A=145, data_B=80
// # After disable data_A constraint: data_A=145, data_B=40
// # Constraint mode data_A_a = 0
// # static Constraint mode data_B_b = 1
// # exit
// # End time: 09:01:37 on Nov 26,2025, Elapsed time: 0:00:01
// # Errors: 0, Warnings: 0

