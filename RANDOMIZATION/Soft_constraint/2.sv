class cricket_data;
  rand bit [3:0] set_players;
  constraint set_players_c {soft set_players inside{5, [5:15]};}
endclass

module class_data;
  cricket_data cd;
  
  initial begin
    cd = new();
    
    repeat(10) begin
      cd.randomize();
      $display("Before inline: set_players = %0d", cd.set_players);
           
      cd.randomize with {set_players inside {[10:20]};};
      $display("After inline: set_players = %0d", cd.set_players);
    end
  end
endmodule


// output
// # run -all
// # Before inline: set_players = 6
// # After inline: set_players = 14
// # Before inline: set_players = 7
// # After inline: set_players = 15
// # Before inline: set_players = 8
// # After inline: set_players = 11
// # Before inline: set_players = 14
// # After inline: set_players = 10
// # Before inline: set_players = 15
// # After inline: set_players = 11
// # Before inline: set_players = 13
// # After inline: set_players = 13
// # Before inline: set_players = 15
// # After inline: set_players = 15
// # Before inline: set_players = 5
// # After inline: set_players = 14
// # Before inline: set_players = 10
// # After inline: set_players = 15
// # Before inline: set_players = 12
// # After inline: set_players = 10
// # exit
