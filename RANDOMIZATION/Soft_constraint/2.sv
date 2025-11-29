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
