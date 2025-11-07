class bike;
  int gears;
  static int bike_model;
  
  function new();
    bike_model++;
    gears = bike_model;
  endfunction
  
  function void display();
    $display("gears = %0d",gears);
  endfunction
endclass
  
  
  module static_properties;
    bike bg[5];
    
    initial begin
      foreach(bg[i]) begin
        bg[i] = new();
        bg[i].display();
      end
    end
  endmodule



// output
// # run -all
// # gears = 1
// # gears = 2
// # gears = 3
// # gears = 4
// # gears = 5
// # exit
