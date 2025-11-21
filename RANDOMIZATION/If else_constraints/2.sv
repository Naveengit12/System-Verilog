
class business;
  rand bit[7:0] profit;
  rand bit[7:0] loss;
  rand enum {ups, downs,risk} data;
  
  constraint data_b {if(data == risk) loss < 50 && profit >= 50;
                     else if(data == downs)
                           profit < 30 && loss >= 50;
                      else // ups
                        loss < 30;}
endclass

module class_business;
  business bpl;
  
  initial begin
    bpl = new();
    repeat(10) begin
      
      bpl.randomize();
      $display("profit=%0d,loss=%0d,data=%0s",bpl.profit,bpl.loss,bpl.data.name());
    end
  end
endmodule


// output
// # run -all
// # profit=185,loss=39,data=risk
// # profit=194,loss=38,data=risk
// # profit=24,loss=157,data=downs
// # profit=10,loss=229,data=downs
// # profit=9,loss=190,data=downs
// # profit=36,loss=23,data=ups
// # profit=201,loss=8,data=ups
// # profit=27,loss=124,data=downs
// # profit=10,loss=224,data=downs
// # profit=8,loss=222,data=downs
// # exit
    
