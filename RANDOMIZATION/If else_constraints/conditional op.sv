// --------------------------------conditional operator---------------

class data;
  rand bit[7:0] value;
  randc enum {pass, fail} score;
  
  constraint score_d{value == ((score == fail) ? 25 : 100);}
endclass

module class_data;
  data ds;
  
  initial begin
    ds = new();
    repeat(10) begin
      
      ds.randomize();
      $display("score=%0s,value=%0d",ds.score.name(),ds.value);
    end
  end
endmodule
  

// output
// # run -all
// # score=pass,value=100
// # score=fail,value=25
// # score=fail,value=25
// # score=pass,value=100
// # score=pass,value=100
// # score=fail,value=25
// # score=pass,value=100
// # score=fail,value=25
// # score=pass,value=100
// # score=fail,value=25
// # exit
