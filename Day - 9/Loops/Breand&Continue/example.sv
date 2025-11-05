// ------------------------------BREAK & CONTINUE------------------
module break_continue_loop;
  int D[30];
  
  initial begin
    for (int i = 0; i < $size(D); i++) begin
      D[i] = i+i;
    end
  
    for (int i = 0; i < $size(D); i++) begin
      if(i == 10) break;
      $display("D[%0d] = %0d", i, D[i]);
    end
    $display("===============================");
          for (int i = 0; i < $size(D); i++) begin
            if(i == 10) continue;
      $display("D[%0d] = %0d", i, D[i]);
    end
  end
endmodule
