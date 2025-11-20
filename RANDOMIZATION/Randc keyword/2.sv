  
class randc_design;
    randc bit [4:0] x;
    randc bit [5:0] y;
    randc bit [2:0] z;
endclass
  
module class_randc;
  randc_design rcd;
  
  initial begin
    rcd = new();
    repeat(8) begin
      rcd.randomize();
      $display("x=%0d,y=%0d,z=%0d",rcd.x,rcd.y,rcd.z);
    end
  end
endmodule


// output
// # run -all
// # x=21,y=35,z=7
// # x=19,y=61,z=0
// # x=11,y=30,z=4
// # x=14,y=62,z=2
// # x=26,y=11,z=5
// # x=16,y=29,z=6
// # x=0,y=22,z=3
// # x=29,y=57,z=1
// # exit
