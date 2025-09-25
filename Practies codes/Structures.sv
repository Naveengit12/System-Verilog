module structure;
  typedef struct {
    string name;
    bit[31:0] wages;
    integer proof;
  } worker
  
  initial begin
    worker m1,m2;
    m1.name = "bolt";
    m1.wages = 'h20000;
    m1.proof = 'B11;
    $display("worker m1 : %p",m1);
    
    m2.name = "ben";
    m2.wages = 'h15000;
    m2.proof = 'B12;
    $display("worker m2 : %p", m2);
  end
endmodule


/* output
# worker m1 : '{name:"bolt", wages:131072, proof:11}
# worker m2 : '{name:"ben", wages:65536, proof:12} */
