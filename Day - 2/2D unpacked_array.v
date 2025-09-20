module twoD_array;  
  int array[6][2] = '{'{1,100},    // unpacked array
                      '{2,200}, 
                      '{3,300},
                      '{4,400},
                      '{5,500},
                      '{6,600}};


  int i, j;

  initial begin
    foreach (array[i, j]) begin
      $display("array[%0d][%0d] = %0d", i, j, array[i][j]);
    end
  end
endmodule
