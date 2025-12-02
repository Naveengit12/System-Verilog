// ----------------------randcase---------------------

class marvel_heroes;
  int god_thunder[int];
  real thor_power;
  function void randcase_checking();
    repeat(10) begin
      randcase
      5 : begin
        $display("selected 5");
        god_thunder[5]++;
      end
      
      10 : begin
        $display("selected 10");
        god_thunder[10]++;
      end
      
      25 : begin
        $display("selected 25");
        god_thunder[25]++;
      end
    endcase
    end
    
    foreach(god_thunder[i]) begin
      thor_power += i;
    end
    
    foreach(god_thunder[i]) begin
      $display("probability for %0d = %0f in 1 iteration",i, i/thor_power);
      $display("god_thunder[%0d] = %0d", i, god_thunder[i]);
      $display("probability for god_thunder[%0d] = %0f", i, god_thunder[i]/10.0);
      $display("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&");
    end
  endfunction
endclass


module class_marvel;
  marvel_heroes mh;
  
  initial begin
    mh = new();
    mh.randcase_checking();
  end
endmodule
  
               
    
