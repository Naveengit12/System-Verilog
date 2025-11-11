// ------------------------------fixed array object-------------------------
class transaction;
  bit [31:0] data;
  int id;
endclass

module class_example;
  transaction tr[10];
  initial begin
    foreach(tr[i]) begin
      tr[i] = new();
      tr[i].data = i*i;
      tr[i].id = i+1;
    end
    
    foreach(tr[i]) 
      $display("tr[%0d].data = %0d, tr[%0d].id = %0d",i, tr[i].data, i, tr[i].id);
  end
endmodule



// output
// run -all
// # tr[0].data = 0, tr[0].id = 1
// # tr[1].data = 1, tr[1].id = 2
// # tr[2].data = 4, tr[2].id = 3
// # tr[3].data = 9, tr[3].id = 4
// # tr[4].data = 16, tr[4].id = 5
// # tr[5].data = 25, tr[5].id = 6
// # tr[6].data = 36, tr[6].id = 7
// # tr[7].data = 49, tr[7].id = 8
// # tr[8].data = 64, tr[8].id = 9
// # tr[9].data = 81, tr[9].id = 10
// # exit
