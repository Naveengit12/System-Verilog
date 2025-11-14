class fight_club;
  bit[31:0] fighters;
  int club_members;
  string fight_mode;
  
  function new(bit[31:0] fighters, int club_members, string fight_mode);
    this.fighters = fighters;
    this.club_members = club_members;
    this.fight_mode = fight_mode;
  endfunction
endclass


class fighters_size;
  string one_vs_one;
  int winner;
  fight_club fc;
  
  function new();
    one_vs_one = "10";
    winner = 1;
    fc = new(20,350,"face_to_face");
  endfunction
  
  function void display();
    $display("Fighters_size: one_vs_one=%0s,winner=%0d",one_vs_one,winner);
    $display("Fight_club: fighters=%0d,club_members=%0d,fight_mode=%0s",
              fc.fighters, fc.club_members, fc.fight_mode);
  endfunction
  
  function void deep_copy(fighters_size fs);
    this.one_vs_one = fs.one_vs_one;
    this.winner = fs.winner;
    this.fc = new(fs.fc.fighters, fs.fc.club_members, fs.fc.fight_mode);
  endfunction
endclass



module D_C;
  fighters_size fs1,fs2;
  
  initial begin
    fs1 = new();
    fs1.display();
    
    fs2 = new();
    fs2.deep_copy(fs1);
    fs2.display();
  end
endmodule


// output
// # run -all
// # Fighters_size: one_vs_one=10,winner=1
// # Fight_club: fighters=20,club_members=350,fight_mode=face_to_face
// # Fighters_size: one_vs_one=10,winner=1
// # Fight_club: fighters=20,club_members=350,fight_mode=face_to_face
// # exit
