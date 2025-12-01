
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



// output
// # 
// # run -all
// # pre_randomize
// # post_randomize
// # len_met =63, no_tiers =38
// # pre_randomize
// # post_randomize
// # len_met =125, no_tiers =59
// # pre_randomize
// # post_randomize
// # len_met =61, no_tiers =55
// # pre_randomize
// # post_randomize
// # len_met =224, no_tiers =52
// # pre_randomize
// # post_randomize
// # len_met =14, no_tiers =44
// # pre_randomize
// # post_randomize
// # len_met =99, no_tiers =41
// # pre_randomize
// # post_randomize
// # len_met =22, no_tiers =45
// # pre_randomize
// # post_randomize
// # len_met =236, no_tiers =47
// # pre_randomize
// # post_randomize
// # len_met =160, no_tiers =52
// # pre_randomize
// # post_randomize
// # len_met =77, no_tiers =41
// # exit
