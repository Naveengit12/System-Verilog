class A #(parameter width = 6, type a_type = bit [4:0]);
  bit [width-1:0] data;
  a_type id;
  
  function void display();
    $display("data = %0d, id = %0d", data, id);
  endfunction
endclass

module class_A;
  A aa;
  A #(5,int) aa_1;
  
  initial begin
    aa = new();
    aa_1 = new();
    
    aa.data = 345;
    aa.id = 984;
    aa.display();
    
    aa_1.data = 112;
    aa_1.id = 912;
    aa_1.display();
  end
endmodule

// output
// # run -all
// # data = 25, id = 24
// # data = 16, id = 912
// # exit
