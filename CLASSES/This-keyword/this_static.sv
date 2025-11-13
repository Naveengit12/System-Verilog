class cricket;
  logic[10:0] teams;
  int players,kit;
  longint viewers;
  
   function static ckt_data(logic[10:0]teams, int players, int kit, longint viewers);
    this.teams = teams;
    this.players = players;
    this.kit = kit;
    this.viewers = viewers;
  endfunction
endclass

module class_cricket;
  initial begin
  cricket ckt;
    ckt = new();
    ckt.ckt_data(1,3,5,6);
    $display("teams=%0h,players=%0h,kit=%0h,viewers=%0h",ckt.teams,ckt.players,ckt.kit,ckt.viewers);
  end
endmodule



// output
// # run -all
// # teams=1,players=3,kit=5,viewers=6
// # exit
