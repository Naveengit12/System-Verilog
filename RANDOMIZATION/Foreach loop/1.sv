
// ===============foreach loop in constraint========

typedef enum {slow, moderate, fast} mode;
class bike_race;
  rand bit [7:0] laps[mode];
  rand bit [1:0] signals[];

  constraint size_c { laps.size() == 3; 
                     signals.size() inside {[2:5]}; }
  constraint signals_c {foreach(signals[i]){signals[i] > i * i;}}
  constraint laps_c { foreach(laps[i]){laps[i] < 100;
                                       (i == slow) -> laps[i] < 30;
                                       (i == moderate) -> laps[i] inside {[30:60]};
                                       (i == fast) -> laps[i] > 60;} }

endclass


module class_bike;
bike_race br;

  initial begin
    br = new();

    repeat (5) begin
      br.randomize();

      foreach(br.laps[i])
        $display("laps[%s] = %0d", i.name(), br.laps[i]);

      foreach(br.signals[i])
        $display("signals[%0d] = %0d", i, br.signals[i]);
      $display("===================");
    end
  end
endmodule

                     
                     
                     
// output
//   laps[slow] = 1
// laps[moderate] = 58
// laps[fast] = 66
// signals[0] = 2
// signals[1] = 2
// ===================
// laps[slow] = 23
// laps[moderate] = 39
// laps[fast] = 85
// signals[0] = 3
// signals[1] = 2
// ===================
// laps[slow] = 6
// laps[moderate] = 51
// laps[fast] = 73
// signals[0] = 1
// signals[1] = 3
// ===================
// laps[slow] = 9
// laps[moderate] = 43
// laps[fast] = 68
// signals[0] = 1
// signals[1] = 3
// ===================
// laps[slow] = 20
// laps[moderate] = 46
// laps[fast] = 69
// signals[0] = 3
// signals[1] = 2
// ===================
//            V C S   S i m u l a t i o n   R e p o r t                    
