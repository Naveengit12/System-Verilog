class data_container;
  rand  bit[7:0] addr_area;
  randc bit weight;
        bit tmp_empty;     


  function void pre_randomize();
    if(tmp_empty==1) 
      addr_area.rand_mode(0);
    else 
      addr_area.rand_mode(1);
    //$display("PRE_RANDOMIZATION: addr_area = %0d,weight = %0d",addr_area,weight);
  endfunction


  function void post_randomize();
    tmp_empty = weight;
    $display("POST_RANDOMIZATION: addr_area = %0d,weight = %0d",addr_area,weight);
  endfunction
endclass

module rand_methods;
  initial begin
    data_container dc;  
    dc = new();

    repeat(8) begin
      dc.randomize();
    end
  end
endmodule
