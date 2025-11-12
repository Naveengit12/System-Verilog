typedef enum{A, B, C, D} lt_type;
class letters;
  logic [63:0] group;
  int ids;
endclass

module class_letters;
  letters lt[lt_type];
  initial begin
    lt[A] = new();
    lt[B] = new();
    lt[C] = new();
    lt[D] = new();
    foreach(lt[i]) begin
      lt[i].group = i+1;
      lt[i].ids = i*i;
    end
    
    foreach(lt[i])
      $display("lt[%0s].group=%0d,lt[%0s].ids=%0d",i.name,lt[i].group,i.name,lt[i].ids);
  end
endmodule


// output
// # run -all
// # lt[A].group=1,lt[A].ids=0
// # lt[B].group=2,lt[B].ids=1
// # lt[C].group=3,lt[C].ids=4
// # lt[D].group=4,lt[D].ids=9
// # exit
