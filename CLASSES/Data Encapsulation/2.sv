class RX100;
  int model;
  bit[31:0] mileage,cost;
  
  function new();
    model = 2020;
    mileage = 40;
    cost = 99999;
    display();
  endfunction
  
  local function void display();
    $display("model=%0d,mileage=%0d,cost=%0d",model,mileage,cost);
  endfunction
endclass

module class_RX100;
  RX100 rx;
  
  initial begin
    rx = new();
//     rx.display();
  end
endmodule



// output
// # run -all
// # model=2020,mileage=40,cost=99999
// # exi
