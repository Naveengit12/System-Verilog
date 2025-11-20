class rand_code;
  rand bit[3:0] data;
endclass

module class_rand;
  rand_code rc;
  
  initial begin
    rc = new();
    $display("=======RC=======");
    repeat(10) begin
      rc.randomize();
      $display("data=%0d",rc.data);
    end
  end
endmodule

// output
// # run -all
// # =======RC=======
// # data=4
// # data=2
// # data=10
// # data=6
// # data=13
// # data=9
// # data=0
// # data=13
// # data=13
// # data=0
// # exit
