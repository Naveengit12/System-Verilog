
// ======================disable randomization===================

class parent_details;
  rand bit[7:0] data_A;
  rand bit[7:0] data_B;
  
  constraint data_A_a{data_A inside{[100:200]};}
  constraint data_B_b{data_B inside{10,50,100,150,200};}
endclass


module class_details;
  parent_details pds;
  
  initial begin
    pds = new();
    pds.randomize();
    $display("Before disable: data_A=%0d,data_B=%0d", pds.data_A, pds.data_A);
    
    pds.rand_mode(0);
    pds.randomize();
    $display("after disable : data_A=%0d,data_B=%0d",pds.data_A,pds.data_B);
    
    pds.rand_mode(1);
     pds.randomize();
    $display("after enable : data_A=%0d,data_B=%0d",pds.data_A,pds.data_A);
    
    pds.data_A.rand_mode(0);
    pds.randomize();
    $display("after disable data_A : data_A=%0d,data_B=%0d",pds.data_A,pds.data_B);
    $display("return function : data_A=%0d,data_B=%0d",pds.data_A.rand_mode(),pds.data_B.rand_mode());
  end
endmodule



// output
// # run -all
// # Before disable: data_A=115,data_B=115
// # after disable : data_A=115,data_B=100
// # after enable : data_A=145,data_B=145
// # after disable data_A : data_A=145,data_B=100
// # return function : data_A=0,data_B=1
// # exit
// # End time: 07:57:15 on Nov 25,2025, Elapsed time: 0:00:01
// # Errors: 0, Warnings: 0
