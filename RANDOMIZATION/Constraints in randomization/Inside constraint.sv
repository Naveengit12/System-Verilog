`define start_range 19
`define end_range 99

class inside_constraint #(parameter int P1=25, P2=95);
  rand bit[7:0] X1;                                                                             
  rand bit[7:0] X2;
  rand bit[7:0] X3;
  rand bit[7:0] X4;
  rand bit[7:0] X5;
  rand bit[7:0] X6;
  rand bit[7:0] X7;
  
  constraint X1_a {X1 inside {[2:15]};}  //range of values
  constraint X2_a {X2 inside {10,20,30};}   //set of values
  constraint X3_a {X3 inside {2,6,9,[10:15],17,20,[21:30]};}  // set and range values combination
  constraint X4_a {X4 inside {[`start_range:`end_range]};}    //define based range in constraint
  constraint X5_a {X5 inside {[X2:X4]};}   //variable based range in constraint
  constraint X6_a {X6 inside {[P1:P2]};}   //parameter based range in constraint
  constraint X7_a {!(X7 inside {[4:0]});}  //inverted inside constraint
endclass

module class_contraint;
  inside_constraint #(50,100) data;
  
  initial begin
    data = new();
    
    repeat(5) begin
      data.randomize();
      $display("X1=%0d,X2=%0d,X3=%0d,X4=%0d,X5=%0d,X6=%0d,X7=%0d",data.X1,data.X2,data.X3,data.X4,data.X5,data.X6,data.X7);
    end
  end
endmodule



// output
// # run -all
// # X1=13,X2=30,X3=17,X4=70,X5=68,X6=58,X7=41
// # X1=2,X2=30,X3=12,X4=34,X5=34,X6=68,X7=102
// # X1=10,X2=10,X3=28,X4=78,X5=54,X6=72,X7=35
// # X1=9,X2=20,X3=17,X4=52,X5=38,X6=56,X7=88
// # X1=5,X2=20,X3=12,X4=65,X5=52,X6=98,X7=252
// # exit
