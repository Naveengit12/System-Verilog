
class data_pkt;
  rand bit[7:0] A1, A2, B1, B2;
  rand bit data_1, data_2;
  
  constraint AB_ab{A2 > A1;
                  B1 == A2 - A1;
                  B2 < B1;
                  B2 == A1/B1;}
  constraint data_a{(data_1 == 1) -> data_2 == 0;}
endclass


module class_data;
  data_pkt pkt;
  
  initial begin
    pkt = new();
    repeat(10) begin
      
      pkt.randomize();
      $display("A1 = %0d, A2 = %0d, B1 = %0d, B2 = %0d",pkt.A1, pkt.A2, pkt.B1, pkt.B2);
      $display("data_1 = %0d,data_2 = %0d",pkt.data_1,pkt.data_2);
    end
  end
endmodule


// output
// # run -all
// # A1 = 37, A2 = 222, B1 = 185, B2 = 0
// # data_1 = 0,data_2 = 0
// # A1 = 2, A2 = 213, B1 = 211, B2 = 0
// # data_1 = 0,data_2 = 1
// # A1 = 8, A2 = 224, B1 = 216, B2 = 0
// # data_1 = 1,data_2 = 0
// # A1 = 50, A2 = 147, B1 = 97, B2 = 0
// # data_1 = 0,data_2 = 1
// # A1 = 177, A2 = 202, B1 = 25, B2 = 7
// # data_1 = 1,data_2 = 0
// # A1 = 141, A2 = 155, B1 = 14, B2 = 10
// # data_1 = 1,data_2 = 0
// # A1 = 78, A2 = 94, B1 = 16, B2 = 4
// # data_1 = 1,data_2 = 0
// # A1 = 224, A2 = 240, B1 = 16, B2 = 14
// # data_1 = 0,data_2 = 0
// # A1 = 9, A2 = 236, B1 = 227, B2 = 0
// # data_1 = 0,data_2 = 1
// # A1 = 9, A2 = 152, B1 = 143, B2 = 0
// # data_1 = 0,data_2 = 0
// # exit
