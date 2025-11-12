// -------------------------------associative array object-------------------
typedef enum {apple, banana, cucumber} sl_type;
class salad;
  bit [31:0] healthy;
  int crisp;
endclass

module class_snack;
  salad sl[sl_type];
  initial begin
    sl[apple]    = new();
    sl[banana]  = new();
    sl[cucumber] = new();
  
    foreach(sl[i]) begin 
      sl[i].healthy = i*i;
      sl[i].crisp = i+1;
    end
    
    foreach(sl[i]) 
      $display("sl[%0s].healthy = %0d, sl[%0s].crisp = %0d",i.name, sl[i].healthy, i.name, sl[i].crisp);
  end
endmodule


// output
// # run -all
// # sl[apple].healthy = 0, sl[apple].crisp = 1
// # sl[banana].healthy = 1, sl[banana].crisp = 2
// # sl[cucumber].healthy = 4, sl[cucumber].crisp = 3
// # exit
