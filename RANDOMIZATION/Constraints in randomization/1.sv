module naveen;
  bit[7:0] data;
  bit[4:0] ids;
  
  function bit[2:0] my_randc;
    while(1) begin
      data = $random;
      if(!ids[data]) begin
        ids[data] = 1;
        return data;
      end
      else if(&ids) begin
        ids = 0;
        ids[data] = 1;
        break;
      end
    end
    return data;
  endfunction
  
  initial begin
    repeat(5) begin
      repeat(10)
        $display("data=%0d",my_randc());
      $display("==================");
    end
  end
endmodule


// output
// # run -all
// # data=4
// # data=1
// # data=1
// # data=3
// # data=5
// # data=5
// # data=5
// # data=2
// # data=1
// # data=5
// # ==================
// # data=6
// # data=5
// # data=5
// # data=4
// # data=1
// # data=6
// # data=5
// # data=2
// # data=5
// # data=7
// # ==================
// # data=2
// # data=7
// # data=2
// # data=6
// # data=0
// # data=5
// # data=4
// # data=5
// # data=5
// # data=5
// # ==================
// # data=3
// # data=2
// # data=0
// # data=0
// # data=2
// # data=5
// # data=6
// # data=3
// # data=5
// # data=3
// # ==================
// # data=3
// # data=5
// # data=2
// # data=6
// # data=5
// # data=7
// # data=3
// # data=2
// # data=2
// # data=4
// # ==================
// # exit
