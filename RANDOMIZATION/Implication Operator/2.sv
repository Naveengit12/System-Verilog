class business;
  rand bit[7:0] profit;
  rand bit[7:0] loss;
  rand enum {ups, downs,risk} data;
  
  constraint data_b {(data == risk) -> loss <= 100 && profit < 100;
                     (data == downs) -> loss >= 100 && profit <10;
                     (data == ups) -> loss < 10 && profit >=100; }
endclass

module class_business;
  business bpl;
  
  initial begin
    bpl = new();
    repeat(10) begin
      
      bpl.randomize();
      $display("data=%0s,loss=%0d,profit=%0d",bpl.data.name(),bpl.loss,bpl.profit);
    end
  end
endmodule



// output
// # run -all
// # data=risk,loss=86,profit=39
// # data=downs,loss=194,profit=7
// # data=ups,loss=4,profit=157
// # data=ups,loss=0,profit=229
// # data=downs,loss=240,profit=2
// # data=risk,loss=36,profit=83
// # data=ups,loss=5,profit=160
// # data=ups,loss=7,profit=124
// # data=downs,loss=136,profit=2
// # data=ups,loss=8,profit=222
// # exit
