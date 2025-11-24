class tupaki_movie;
  randc bit [7:0] bullets;

  constraint bullets_b { bullets > 50; bullets < 200; }
endclass


class vijay extends tupaki_movie;
  rand bit [7:0] bomb;

  // NEW NAME → avoids overriding base constraint
  constraint bullets_b2 { bullets inside {[100:200]}; }
  constraint bomb_b { bomb inside {[10:50]}; }
endclass


module class_vijay;
  tupaki_movie tm;
  vijay vj;

  initial begin
    tm = new();
    vj = new();

    repeat (10) begin
      tm.randomize();
      $display("tupaki_movie : bullets = %0d", tm.bullets);
    end

    repeat (10) begin
      vj.randomize();
      $display("vijay : bullets = %0d, bomb = %0d", vj.bullets, vj.bomb);
    end
  end
endmodule


// output
// Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Nov 24 07:13 2025
// tupaki_movie : bullets = 101
// tupaki_movie : bullets = 108
// tupaki_movie : bullets = 105
// tupaki_movie : bullets = 118
// tupaki_movie : bullets = 183
// tupaki_movie : bullets = 190
// tupaki_movie : bullets = 170
// tupaki_movie : bullets = 199
// tupaki_movie : bullets = 126
// tupaki_movie : bullets = 88
// vijay : bullets = 147, bomb = 44
// vijay : bullets = 197, bomb = 50
// vijay : bullets = 140, bomb = 46
// vijay : bullets = 142, bomb = 23
// vijay : bullets = 151, bomb = 18
// vijay : bullets = 187, bomb = 26
// vijay : bullets = 139, bomb = 45
// vijay : bullets = 177, bomb = 20
// vijay : bullets = 124, bomb = 46
// vijay : bullets = 121, bomb = 39
//            V C S   S i m u l a t i o n   R e p o r t 
// Time: 0 ns
