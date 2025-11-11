class king;
  logic[63:0] kingdoms;
  int wins,losses;
endclass

module king_wars;
  king k1,k2,k3;
  initial begin
    k1 = new();
    if(k1 != null) begin
      k1.kingdoms = 4;
      k1.wins = 3;
      k1.losses = 1;
      $display("k1.kingdoms=%0h,k1.wins=%0h,k1.losses=%0h",k1.kingdoms,k1.wins,k1.losses);
    end
    else
      $display("k1 is not alive");
    
    if(k2 != null) begin
      k2.kingdoms = 7;
      k2.wins = 2;
      k2.losses = 5;
      $display("k2.kingdoms=%0h,k2.wins=%0h,k2.losses=%0h",k2.kingdoms,k2.wins,k2.losses);
    end
    else
      $display("k2 is not alive");
    
    begin
     k3 = new();
    if(k3 != null) begin
      k3.kingdoms = 10;
      k3.wins = 9;
      k3.losses = 1;
      $display("k3.kingdoms=%0h,k3.wins=%0h,k3.losses=%0h",k3.kingdoms,k3.wins,k3.losses);
    end
    else
      $display("k3 is not alive");
   end
  end
endmodule



// output
// # run -all
// # k1.kingdoms=4,k1.wins=3,k1.losses=1
// # k2 is not alive
// # k3.kingdoms=a,k3.wins=9,k3.losses=1
// # exit
