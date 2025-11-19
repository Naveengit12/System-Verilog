class data_transaction;
  bit [31:0] data_T;
  bit fix;
endclass

class shifting_data #(parameter width = 32, type D_type = data_transaction);
  bit[width-1:0] data1;
  D_type trans;
 
  function void display();
    $display("shifting_data : data1=%0d",data1);
    $display("data_transaction : data_T=%0h,fix=%0d",trans.data_T,trans.fix);
  endfunction
endclass

module class_data;
  shifting_data sd;
  
  initial begin
    sd = new();
    sd.trans = new();
    
    sd.data1 = 221;
    sd.trans.data_T = 32'hDDDD9999;
    sd.trans.fix = 1;
    
    sd.display();
  end
endmodule



// output
// # run -all
// # shifting_data : data1=221
// # data_transaction : data_T=dddd9999,fix=1
// # exit

    
