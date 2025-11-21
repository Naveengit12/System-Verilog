
class package_data;
  rand bit[7:0] chicken;
  rand enum {win, lose} fight;
  
  constraint fight_c{(fight == lose) -> chicken < 100;}
endclass
                    

module class_package;
  package_data pd;
  
  initial begin
    pd = new();
    repeat(10) begin
    pd.randomize();
      $display("fight=%0s,chicken=%0d",pd.fight.name(),pd.chicken);
    end
  end
endmodule

// output
// # run -all
// # fight=win,chicken=204
// # fight=win,chicken=71
// # fight=lose,chicken=36
// # fight=win,chicken=233
// # fight=win,chicken=176
// # fight=win,chicken=43
// # fight=lose,chicken=37
// # fight=win,chicken=109
// # fight=win,chicken=127
// # fight=win,chicken=150
// # exit
