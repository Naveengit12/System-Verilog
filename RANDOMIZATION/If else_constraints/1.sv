// ----------------------------if else in constraint--------------------------
class package_data;
  rand bit[7:0] chicken;
  rand enum {win, lose} fight;
  
  constraint fight_c{if(fight == lose) chicken < 100;
                    else
                    chicken >= 100;}
endclass

module class_package;
  package_data pd;
  
  initial begin
    pd = new();
    repeat(10) begin
    pd.randomize();
      $display("chicken=%0d,fight=%0s",pd.chicken,pd.fight.name());
    end
  end
endmodule

// output
// # run -all
// # chicken=204,fight=win
// # chicken=71,fight=lose
// # chicken=36,fight=lose
// # chicken=105,fight=win
// # chicken=176,fight=win
// # chicken=43,fight=lose
// # chicken=37,fight=lose
// # chicken=209,fight=win
// # chicken=127,fight=win
// # chicken=150,fight=win
// # exit
