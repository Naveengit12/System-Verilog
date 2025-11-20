
class randc_code;
  randc bit[3:0] data;
endclass

module class_randc;
  randc_code rc;
  
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
// # data=7
// # data=0
// # data=6
// # data=2
// # data=1
// # data=3
// # data=11
// # data=13
// # data=9
// # exit
