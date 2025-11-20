class rand_design;
    rand bit [4:0] x;
    rand bit [5:0] y;
    rand bit [2:0] z;
endclass
  
module class_rand;
  rand_design rd;
  
  initial begin
    rd = new();
    repeat(8) begin
      rd.randomize();
      $display("x=%0d,y=%0d,z=%0d",rd.x,rd.y,rd.z);
    end
  end
endmodule


// output
// # run -all
// # x=21,y=35,z=7
// # x=27,y=24,z=6
// # x=29,y=22,z=7
// # x=15,y=22,z=5
// # x=18,y=55,z=2
// # x=4,y=56,z=7
// # x=16,y=35,z=7
// # x=22,y=7,z=6
// # exit
