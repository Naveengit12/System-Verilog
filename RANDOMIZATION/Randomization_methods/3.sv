
class truck_size;
  rand bit[7:0] len_met;
  rand bit[7:0] no_tiers;
  
  constraint len_met_s{len_met > 100; len_met < 200;}
  constraint no_tiers_N{no_tiers > 35; no_tiers < 70;}
  
  function void pre_randomize();
    $display("pre_randomize");
    len_met_s.constraint_mode(0);
  endfunction
  
  function void post_randomize();
    $display("post_randomize");
    $display("len_met =%0d, no_tiers =%0d",this.len_met, this.no_tiers);
  endfunction
endclass
  
module class_data;
   truck_size TS;
    
   initial begin
     TS = new();
     repeat(10) begin
     TS.randomize(); 
     end
   end
endmodule



output
