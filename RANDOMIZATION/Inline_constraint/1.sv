
class wars;
  rand bit [7:0] wins, loss;
  constraint wins_w {wins > 100; wins < 200;}
  constraint loss_c {loss > 5; loss < 80;}
endclass

module class_data;
  wars me;
  
  initial begin
    me = new();
    
    repeat(10) begin
      me.randomize();
      $display("Before inline : val1 = %0d, val2 = %0d", me.wins, me.loss);
           
      me.randomize with {wins > 150; wins < 160;};
      me.randomize with {loss inside {[10:15]};};
      $display("After inline : wins = %0d, loss = %0d", me.wins, me.loss);
    end
  end
endmodule

// output
// # run -all
// # Before inline : val1 = 125, val2 = 56
// # After inline : wins = 101, loss = 10
// # Before inline : val1 = 105, val2 = 48
// # After inline : wins = 153, loss = 11
// # Before inline : val1 = 154, val2 = 35
// # After inline : wins = 123, loss = 12
// # Before inline : val1 = 150, val2 = 53
// # After inline : wins = 169, loss = 12
// # Before inline : val1 = 121, val2 = 61
// # After inline : wins = 152, loss = 13
// # Before inline : val1 = 114, val2 = 11
// # After inline : wins = 191, loss = 15
// # Before inline : val1 = 124, val2 = 29
// # After inline : wins = 124, loss = 14
// # Before inline : val1 = 139, val2 = 57
// # After inline : wins = 117, loss = 11
// # Before inline : val1 = 121, val2 = 23
// # After inline : wins = 142, loss = 11
// # Before inline : val1 = 128, val2 = 54
// # After inline : wins = 166, loss = 14
// # exit

