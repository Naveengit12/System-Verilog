class cricket;
  logic[10:0] teams;
  int players,kit;
  longint viewers;
  
  function new(logic[10:0]teams, int players, int kit, longint viewers);
    this.teams = teams;
    this.players = players;
    this.kit = kit;
    this.viewers = viewers;
  endfunction
endclass

module class_cricket;
  initial begin
  cricket ckt;
    ckt = new(5, 55, 5,101012301);
    $display("teams=%0h,players=%0h,kit=%0h,viewers=%0h",ckt.teams,ckt.players,ckt.kit,ckt.viewers);
  end
endmodule


// output
// # run -all
// # teams=5,players=37,kit=5,viewers=605534d
// # exit
