typedef enum {mahendra_b, amarendra_b, b_deva, sivagami} bahubali;
class mahishmati_kingdom;
  rand bit [7:0] data[bahubali];
  rand bit [3:0] teams[];
  constraint teams_b { data.size() == 4; teams.size() inside {[2:5]};}
  
  constraint teams_kb { foreach(teams[i]) { teams[i] > i*i; } }
  constraint value_a_c {
                        foreach(data[i]) {
                           data[i] < 100;
                          (i == mahendra_b) -> data[i] < 50;
                          (i == amarendra_b) -> data[i] > 50;
                          (i == b_deva) -> data[i] inside {[20:30]};
                          (i == sivagami) -> data[i] inside {[40:60]};
                         }
                       }
endclass

module class_kingdom;
  mahishmati_kingdom mk;
  
  initial begin
    mk = new();
    
    repeat(5) begin
      mk.randomize();
      foreach(mk.data[i]) 
        $display("data[%s] = %0d", i.name(), mk.data[i]);
      foreach(mk.teams[i]) 
        $display("teams[%0d] = %0d", i, mk.teams[i]);
      $display("********************************");
    end
  end
endmodule


//     output
//     Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Nov 22 04:37 2025
// data[mahendra_b] = 15
// data[amarendra_b] = 52
// data[b_deva] = 25
// data[sivagami] = 40
// teams[0] = 14
// teams[1] = 10
// ********************************
// data[mahendra_b] = 47
// data[amarendra_b] = 75
// data[b_deva] = 24
// data[sivagami] = 58
// teams[0] = 15
// teams[1] = 3
// ********************************
// data[mahendra_b] = 33
// data[amarendra_b] = 66
// data[b_deva] = 23
// data[sivagami] = 46
// teams[0] = 5
// teams[1] = 15
// teams[2] = 15
// teams[3] = 13
// ********************************
// data[mahendra_b] = 27
// data[amarendra_b] = 92
// data[b_deva] = 26
// data[sivagami] = 60
// teams[0] = 4
// teams[1] = 11
// teams[2] = 11
// teams[3] = 15
// ********************************
// data[mahendra_b] = 28
// data[amarendra_b] = 61
// data[b_deva] = 29
// data[sivagami] = 47
// teams[0] = 11
// teams[1] = 2
// teams[2] = 6
// ********************************
//            V C S   S i m u l a t i o n   R e p o r t 
// Time: 0 ns
