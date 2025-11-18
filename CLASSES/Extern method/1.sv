class naveen;
  bit[31:0] data;
  int id_number;
  
  extern function void display();
    extern task delay();
      endclass
      
      function void naveen::display();
        $display("data=%0d,id_number=%0d",data,id_number);
      endfunction
      
      task naveen::delay();
        #10;
        $display("time=%0t,d_data=%0d",$time,data);
      endtask
      
      
module naveen_class;
  naveen nvn;
  
  initial begin
    nvn = new();
    
    nvn.data = 250;
    nvn.id_number = 1296;
    
    nvn.display();
    nvn.delay();
  end
endmodule

//       output
//       # run -all
// # data=250,id_number=1296
// # time=10,d_data=250
// # exit
