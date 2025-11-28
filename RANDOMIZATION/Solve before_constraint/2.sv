class team_details;
  rand bit[7:0] team_length;
  rand bit[4:0] team_code;
  constraint en_c { solve team_code before team_length;
                   if(team_code == 1) { team_length inside {[0:100]}; }
                  }
endclass

module class_details;
  team_details tds;
  
  initial begin
    tds = new();
    
    repeat(10) begin
      tds.randomize();
      $display("team_code = %0d, team_length = %0d", tds.team_code, tds.team_length);
    end
  end
endmodule





// output
//                    # run -all
// # team_code = 18, team_length = 213
// # team_code = 3, team_length = 117
// # team_code = 17, team_length = 124
// # team_code = 16, team_length = 121
// # team_code = 11, team_length = 37
// # team_code = 18, team_length = 219
// # team_code = 6, team_length = 110
// # team_code = 31, team_length = 71
// # team_code = 28, team_length = 133
// # team_code = 24, team_length = 103
// # exit
