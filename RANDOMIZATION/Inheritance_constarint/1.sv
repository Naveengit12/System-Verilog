//////////////////////////// inheritance in constraint///////////////////

class parent_data;
  rand bit[7:0] addr;
  rand bit[3:0] ids;
  
  constraint addr_p{addr > 10; addr < 100;}
  constraint ids_p{ids > 2; ids < 10;}
endclass

class child_data extends parent_data;
  constraint addr_p{addr inside{[20:80]};}
  constraint ids_p{ids inside{[2:12]};}
endclass


module class_data;
  parent_data pd;
  child_data cd;
  
  initial begin
    pd = new();
    cd = new();
    
    repeat(10) begin
      pd.randomize();
      $display("parent_data : addr=%0d,ids=%0d",pd.addr,pd.ids);
    end
    repeat(10) begin
      cd.randomize();
      $display("child_data : addr=%0d,ids=%0d",cd.addr,cd.ids);
    end
  end
endmodule


// output
// Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Nov 24 05:34 2025
// parent_data : addr=29,ids=9
// parent_data : addr=32,ids=3
// parent_data : addr=65,ids=8
// parent_data : addr=78,ids=6
// parent_data : addr=30,ids=5
// parent_data : addr=22,ids=7
// parent_data : addr=94,ids=9
// parent_data : addr=31,ids=3
// parent_data : addr=64,ids=7
// parent_data : addr=35,ids=6
// child_data : addr=24,ids=11
// child_data : addr=80,ids=12
// child_data : addr=34,ids=11
// child_data : addr=38,ids=5
// child_data : addr=42,ids=4
// child_data : addr=35,ids=6
// child_data : addr=36,ids=11
// child_data : addr=22,ids=4
// child_data : addr=34,ids=11
// child_data : addr=22,ids=9
//            V C S   S i m u l a t i o n   R e p o r t 
// Time: 0 ns
// CPU Time:      0.460 seconds;       Data structure size:   0.0Mb
// Mon Nov 24 05:34:35 2025
